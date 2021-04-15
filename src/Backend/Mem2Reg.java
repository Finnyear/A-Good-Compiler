package Backend;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.Inst;
import MIR.IRInst.Load;
import MIR.IRInst.Phi;
import MIR.IRInst.Store;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.Root;
import Util.Domgen;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class Mem2Reg {
    public Root IRroot;
    public Mem2Reg(Root IRroot){
        this.IRroot = IRroot;
    }

    public entity replace(HashMap<entity, entity> rmap, entity replaced){
        entity tmp = replaced;
        while(rmap.containsKey(tmp)) tmp = rmap.get(tmp);
        return tmp;
    }

    public void runforfn(IRFunction func){
        HashSet<Register> allocvars = func.allocvars;
        HashSet<IRBlock> defblocks = new HashSet<>();
        HashMap<IRBlock, HashSet<Load>> allocloads = new HashMap<>();
        HashMap<IRBlock, HashMap<Register, Phi>> allocphis = new HashMap<>();
        HashMap<IRBlock, HashMap<Register, entity>> allocstores = new HashMap<>();
        HashMap<entity, entity> rmap = new HashMap<>();
        new Domgen(func).runforfn();

        func.blocks.forEach(block -> {
            allocloads.put(block, new HashSet<>());
            allocphis.put(block, new HashMap<>());
            allocstores.put(block, new HashMap<>());
        });


        for (IRBlock block : func.blocks) {
            for (Inst inst = block.gethead(); inst != null;) {
                Inst tmp = block.getnxt(inst);
                if (inst instanceof Load) {
                    entity addr = ((Load) inst).addr;
                    if (addr instanceof Register && (allocvars.contains(addr))) {
                        HashMap<Register, entity> blockLiveOut = allocstores.get(inst.block);
                        if (blockLiveOut.containsKey(addr)) {
                            rmap.put(inst.dest, blockLiveOut.get(addr));
                            inst.removeself(true);
                        }
                        else allocloads.get(inst.block).add((Load) inst);
                    }
                }
                else if (inst instanceof Store) {
                    entity addr = ((Store) inst).addr;
                    if (addr instanceof Register && (allocvars.contains(addr))) {
                        defblocks.add(inst.block);
                        allocstores.get(inst.block).put((Register) addr, ((Store) inst).value);
                        inst.removeself(true);
                    }
                }
                inst = tmp;
            }
        }

        HashSet<IRBlock> runningSet;
        while(defblocks.size() > 0){
            runningSet = defblocks;
            defblocks = new HashSet<>();
            for (IRBlock runner : runningSet) {
                HashMap<Register, entity> runnerDefAlloc = allocstores.get(runner);
                if (runnerDefAlloc.size() != 0) {
                    for (IRBlock df : runner.domfrontiers) {
                        for (Map.Entry<Register, entity> entry : runnerDefAlloc.entrySet()) {
                            Register allocVar = entry.getKey();
                            entity value = entry.getValue();
                            if (!allocphis.get(df).containsKey(allocVar)) {
                                Register dest = new Register(value.type, allocVar.name + "_phi");
                                Phi phi = new Phi(new ArrayList<>(), new ArrayList<>(), dest, df);
                                df.addphi(phi);
                                if (!allocstores.get(df).containsKey(allocVar)) {
                                    allocstores.get(df).put(allocVar, dest);
                                    defblocks.add(df);
                                }
                                allocphis.get(df).put(allocVar, phi);
                            }
                        }
                    }
                }
            }
        }

        func.blocks.forEach(block -> {
            if (!allocphis.get(block).isEmpty()) {
                allocphis.get(block).forEach((addr, phi) -> block.pre_block.forEach(pre -> {
                    IRBlock runner = pre;
                    while (!allocstores.get(runner).containsKey(addr)) runner = runner.idom;
                    phi.addsrc(allocstores.get(runner).get(addr), pre);
                }));
            }
            if (!allocloads.get(block).isEmpty()) {
                allocloads.get(block).forEach(load -> {
                    Register reg = load.dest;
                    Register replacedVar = (Register)load.addr;
                    entity replace;
                    if (allocphis.get(block).containsKey(replacedVar))
                        replace = allocphis.get(block).get(replacedVar).dest;
                    else {
                        IRBlock currentBlock = block.idom;
                        while (true)
                            if (allocstores.get(currentBlock).containsKey(replacedVar)) {
                                replace = allocstores.get(currentBlock).get(replacedVar);
                                break;
                            } else currentBlock = currentBlock.idom;
                    }
                    rmap.put(reg, replace(rmap, replace));
                    load.removeself(true);
                });
            }
        });
        rmap.forEach((reg, rep) -> ((Register)reg).replaceusewith(replace(rmap, rep)));
    }

    public boolean run(){
        IRroot.functions.forEach((name, func) -> runforfn(func));
        return true;
    }
}
