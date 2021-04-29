package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.*;
import MIR.IROperand.Null;
import MIR.IROperand.entity;
import MIR.IRType.IRpointerType;
import MIR.Root;
import Util.IRFnGraph;
import Util.IRLoop;

import java.util.*;

public class AliasAnalysis {
    private static class Mem{
        public ArrayList<Mem> base = new ArrayList<>();
        public ArrayList<Mem> simple = new ArrayList<>();
        public ArrayList<Mem> complexa = new ArrayList<>();
        public ArrayList<Mem> complexb = new ArrayList<>();
        public HashSet<Mem> pts = new HashSet<>();
        public String name;
        public Mem(String name){this.name = name;}
    }
    private Root IRroot;
    private HashMap<entity, Mem> pointermap = new HashMap<>();
    private HashSet<Mem> memset = new HashSet<>();
    private HashMap<IRFunction, HashSet<Mem>> allstores = new HashMap<>();
    private HashMap<IRBlock, HashSet<Mem>> in = new HashMap<>(), out = new HashMap<>();

    public AliasAnalysis(Root IRroot){
        this.IRroot = IRroot;
    }


    public boolean mayalias(entity src1, entity src2) {
        if (!((IRpointerType)src1.type).pointeeType.sameas(((IRpointerType)src2.type).pointeeType)) return false;
        HashSet<Mem> pts1 = new HashSet<>(pointermap.get(src1).pts);
        pts1.retainAll(pointermap.get(src2).pts);
        return !pts1.isEmpty();
    }

    private HashSet<Mem> storeinloop = new HashSet<>();
    private HashSet<entity> storeAddrInLoop = new HashSet<>();
    public void buildstoreinloop(IRLoop loop) {
        storeinloop.clear();
        loop.blocks.forEach(block -> {
            for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                if (inst instanceof Store)
                    storeAddrInLoop.add(((Store) inst).addr);
                else if (inst instanceof Call) {
                    Call ca = (Call) inst;
                    if (!IRroot.isbuiltin(ca.callee.name))
                        storeinloop.addAll(allstores.get(ca.callee));
                }
        });
    }
    public boolean storeinloop(Load inst) {
        entity addr = inst.addr;
        HashSet<Mem> pts = new HashSet<>(pointermap.get(inst.addr).pts);
        pts.retainAll(storeinloop);
        if (pts.isEmpty()) {
            for (entity address : storeAddrInLoop)
                if (mayalias(address, addr)) return true;
            return false;
        } return true;
    }

    private void initMem() {
        IRroot.globalVars.forEach(reg -> {
            Mem pointer = new Mem(reg.name), pointee = new Mem(reg.name + "_pointee");
            pointer.base.add(pointee);
            pointermap.put(reg, pointer);
            memset.add(pointer);
            memset.add(pointee);
        });
        IRroot.conststrings.forEach((name, value) -> {
            Mem pointer = new Mem(name), pointee = new Mem(name + "_pointee");
            pointer.base.add(pointee);
            pointermap.put(value, pointer);
            memset.add(pointer);
            memset.add(pointee);
        });
        IRroot.functions.forEach((name, fn) ->{
            fn.blocks.forEach(block -> {
                for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                    if (inst.dest != null && inst.dest.type instanceof IRpointerType){
                        Mem tmp = new Mem(inst.dest.toString());
                        pointermap.put(inst.dest, tmp);
                        memset.add(tmp);
                    }

                block.Phis.forEach((reg, phi) -> {
                    if (reg.type instanceof IRpointerType) {
                        Mem tmp = new Mem(reg.toString());
                        pointermap.put(reg, tmp);
                        memset.add(tmp);
                    }
                });
            });
            fn.params.forEach(param -> {
                if (param.type instanceof IRpointerType) {
                    Mem tmp = new Mem(param.toString());
                    pointermap.put(param, tmp);
                    memset.add(tmp);
                }
            });
        });
    }
    private void collect(IRFunction fn) { //collect constraints
        fn.blocks.forEach(block -> {
            block.Phis.forEach((reg, phi) -> {
                if (reg.type instanceof IRpointerType) {
                    Mem phiMem = pointermap.get(reg);
                    phi.entities.forEach(value -> {
                        if (!(value instanceof Null))
                            pointermap.get(value).simple.add(phiMem);
                    });
                }
            });
            for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) {
                if (inst instanceof Load && inst.dest.type instanceof IRpointerType) {
                    if (!(((Load) inst).addr instanceof Null))
                        pointermap.get(((Load) inst).addr)
                                .complexa.add(pointermap.get(inst.dest));
                }
                else if (inst instanceof Bitcast) {
                    if (!(((Bitcast) inst).value instanceof Null))
                        pointermap.get(((Bitcast) inst).value)
                                .simple.add(pointermap.get(inst.dest));
                }
                else if (inst instanceof Getelementptr) {
                    if (!(((Getelementptr) inst).pointer instanceof Null))
                        pointermap.get(((Getelementptr) inst).pointer)
                                .simple.add(pointermap.get(inst.dest));
                }
                else if (inst instanceof Call) {
                    Call ca = (Call) inst;
                    if (IRroot.isbuiltin(ca.callee.name)) continue;
                    for (int i = 0;i < ca.parameters.size();++i) {
                        entity op = ca.parameters.get(i);
                        if (op.type instanceof IRpointerType && !(op instanceof Null))
                            pointermap.get(op).simple.add(
                                    pointermap.get(ca.callee.params.get(i)));
                    }
                    if (ca.dest != null && ca.dest.type instanceof IRpointerType) {
                        entity RetReg = ((Return) ca.callee.exitblock.terminate).value;
                        if (!(RetReg instanceof Null))
                            pointermap.get(RetReg).simple.add(pointermap.get(ca.dest));
                    }
                }
                else if (inst instanceof Malloc) {
                    Mem allocMem = new Mem("alloc_" + inst.dest.toString());
                    pointermap.get(inst.dest).base.add(allocMem);
                    memset.add(allocMem);
                }
                else if (inst instanceof Store) {
                    Store st = (Store) inst;
                    if (st.value.type instanceof IRpointerType && !(st.value instanceof Null))
                        pointermap.get(st.addr).complexb.add(pointermap.get(st.value));
                }
            }
        });
    }
    private void workQueue() {
        Queue<Mem> queue = new LinkedList<>();
        memset.forEach(mem -> {
            if (!mem.base.isEmpty()) mem.pts.addAll(mem.base);
        });
        HashSet<Mem> simpleset = new HashSet<>();
        memset.forEach(mem -> {if (!mem.simple.isEmpty()) simpleset.add(mem);});
        HashSet<Mem> visited = new HashSet<>();
        while(!visited.containsAll(simpleset)) {
            HashSet<Mem> todo = new HashSet<>(simpleset);
            todo.removeAll(visited);
            todo.forEach(b -> {
                visited.add(b);
                b.simple.forEach(a -> {if (!a.pts.containsAll(b.pts)) {visited.remove(a);a.pts.addAll(b.pts);} });
            });
        }
        memset.forEach(mem -> {if(!mem.pts.isEmpty())queue.offer(mem);});
        while (!queue.isEmpty()) {
            Mem v = queue.poll();
            v.simple.forEach(q -> {if (!q.pts.containsAll(v.pts)) {q.pts.addAll(v.pts); queue.offer(q);} });
            v.pts.forEach(a -> {
                v.complexa.forEach(p -> {if (!a.simple.contains(p)){a.simple.add(p); queue.offer(a);} });
                v.complexb.forEach(q -> {if (!q.simple.contains(a)) {q.simple.add(a);queue.offer(q);} });
            });
        }
    }
    private void fnStoreCollect() {
        IRFnGraph callgraph = new IRFnGraph(IRroot);
        callgraph.build();
        IRroot.functions.forEach((name, fn) -> {
            HashSet<Mem> stores = new HashSet<>();
            fn.blocks.forEach(block -> {
                for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                    if (inst instanceof Store)
                        stores.addAll(pointermap.get(((Store) inst).addr).pts);
            });
            allstores.put(fn, stores);
        });
        HashSet<IRFunction> visited = new HashSet<>();
        HashSet<IRFunction> allFn = new HashSet<>(IRroot.functions.values());
        while(!visited.containsAll(allFn)) {
            HashSet<IRFunction> todo = new HashSet<>(allFn);
            todo.removeAll(visited);
            todo.forEach(fn -> {
                visited.add(fn);
                HashSet<Mem> stores = allstores.get(fn);
                callgraph.getcaller(fn).forEach(caller -> {
                    if (!allstores.get(caller).containsAll(stores)) {
                        visited.remove(caller);
                        allstores.get(caller).addAll(stores);
                    }
                });
            });
        }
        IRroot.functions.forEach((name, fn) -> fn.blocks.forEach(block -> {
            HashSet<Mem> blockStores = new HashSet<>();
            for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                if (inst instanceof Store)
                    blockStores.addAll(pointermap.get(((Store) inst).addr).pts);
                else if (inst instanceof Call) {
                    Call ca = (Call) inst;
                    if (!IRroot.isbuiltin(ca.callee.name))
                        blockStores.addAll(allstores.get(ca.callee));
                }
            out.put(block, blockStores);
        }));
    }


    public void run() {
        initMem();
        IRroot.functions.forEach((name, fn) -> collect(fn));
        workQueue();
        fnStoreCollect();
    }
}
