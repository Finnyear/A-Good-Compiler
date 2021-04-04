package Backend;

import Asm.*;
import Asm.LOperand.*;
import Asm.RiscInst.*;

import java.util.*;

public class RegAlloc {

    private static class edge {
        Reg u, v;
        public edge(Reg u, Reg v){
            this.u = u;
            this.v = v;
        }
        @Override
        public boolean equals(Object o) {
            return (o instanceof edge && ((edge)o).u == u && ((edge)o).v == v);
        }
        @Override
        public int hashCode() {
            return u.toString().hashCode() ^ v.toString().hashCode();
        }
    }
    private final LRoot root;
    private LFn currentFn;
    private final HashSet<Reg> preColored;
    private final HashSet<Mv> workListMoves = new LinkedHashSet<>(), activeMoves = new HashSet<>();
    private final HashSet<Reg> spillWorkList = new LinkedHashSet<>(), freezeWorkList = new HashSet<>(),
            simplifyWorkList = new LinkedHashSet<>(), spilledNodes = new LinkedHashSet<>(),
            coloredNodes = new HashSet<>(), coalescedNodes = new LinkedHashSet<>(),
            spillIntroduce = new HashSet<>(), initial = new LinkedHashSet<>();
    private final HashSet<edge> adjSet = new HashSet<>();
    private final Stack<Reg> selectStack = new Stack<>();
    private int stacklength = 0;
    private final int K;

    private static final int inf = 1000000000;

    public RegAlloc(LRoot root) {
        this.root = root;
        preColored = new HashSet<>(root.phyregs());
        K = root.assignableregs().size();
    }

    private void useDefCollect(LFn fn) {
        fn.blocks.forEach(block ->{
            double weight = 1;
            for (RiscInst inst = block.head; inst != null; inst = inst.nxt) {
                inst.uses().forEach(reg -> reg.weight += weight);
                if (inst.dest != null) inst.dest.weight += weight;
            }
        });
    }

    private void init() {
        initial.clear();
        simplifyWorkList.clear();
        freezeWorkList.clear();
        spillWorkList.clear();
        spilledNodes.clear();
        coalescedNodes.clear();
        coloredNodes.clear();
        selectStack.clear();
        activeMoves.clear();
        workListMoves.clear();
        adjSet.clear();
        currentFn.blocks.forEach(block -> {
            for (RiscInst inst = block.head; inst != null; inst = inst.nxt){
                initial.addAll(inst.defs());
                initial.addAll(inst.uses());
            }
        });
        initial.removeAll(preColored);
        initial.forEach(reg -> {
            reg.weight = 0;reg.deg = 0;
            reg.alias = null;reg.color = null;
            reg.adjList.clear();reg.moveList.clear();
        });

        preColored.forEach(reg -> {
            reg.deg = inf;
            reg.color = (PhyReg)reg;
            reg.alias = null;
            reg.adjList.clear();
            reg.moveList.clear();
        });
        useDefCollect(currentFn);
    }
    private void build() {
        currentFn.blocks.forEach(block -> {
            HashSet<Reg> currentLive = new HashSet<>(block.liveout);
            for (RiscInst inst = block.tail; inst != null; inst = inst.pre) {
                if (inst instanceof Mv) {
                    currentLive.removeAll(inst.uses());
                    HashSet<Reg> mvAbout = inst.uses();
                    mvAbout.addAll(inst.defs());
                    for (Reg reg : mvAbout) reg.moveList.add((Mv) inst);
                    workListMoves.add((Mv) inst);
                }
                HashSet<Reg> defs = inst.defs();
                currentLive.add(root.getphyreg(0));
                currentLive.addAll(defs);
                defs.forEach(def -> currentLive.forEach(reg -> addEdge(reg, def)));

                currentLive.removeAll(defs);
                currentLive.addAll(inst.uses());
            }
        });
    }

    private void addEdge(Reg u, Reg v) {
        if (u != v && !adjSet.contains(new edge(u, v))){
            adjSet.add(new edge(u, v));
            adjSet.add(new edge(v, u));
            if (!(preColored.contains(u))) {
                u.adjList.add(v);
                ++u.deg;
            }
            if (!(preColored.contains(v))) {
                v.adjList.add(u);
                ++v.deg;
            }
        }
    }
    private HashSet<Reg> adjacent(Reg u) {
        HashSet<Reg> ret = new HashSet<>(u.adjList);
        ret.removeAll(selectStack);
        ret.removeAll(coalescedNodes);
        return ret;
    }
    private HashSet<Reg> adjacent(Reg u, Reg v) {
        HashSet<Reg> ret = new HashSet<>(adjacent(u));
        ret.addAll(adjacent(v));
        return ret;
    }

    private HashSet<Mv> nodeMoves(Reg u) {
        HashSet<Mv> ret = new HashSet<>(workListMoves);
        ret.addAll(activeMoves);
        ret.retainAll(u.moveList);
        return ret;
    }
    private boolean moveRelated(Reg u) {
        return !nodeMoves(u).isEmpty();
    }
    private void simplify() {
        Reg node = simplifyWorkList.iterator().next();
        simplifyWorkList.remove(node);
        selectStack.push(node);
        adjacent(node).forEach(this::decrementDegree);
    }
    private void decrementDegree(Reg u) {
        int d = u.deg;
        u.deg--;
        if (d == K) {
            HashSet<Reg> nodes = new HashSet<>(adjacent(u));
            nodes.add(u);
            enableMoves(nodes);
            spillWorkList.remove(u);
            if (moveRelated(u)) freezeWorkList.add(u);
            else simplifyWorkList.add(u);
        }
    }
    private void enableMoves(HashSet<Reg> nodes) {
        nodes.forEach(node -> nodeMoves(node).forEach(move -> {
            if (activeMoves.contains(move)) {
                activeMoves.remove(move); workListMoves.add(move);
            }
        }));
    }
    private void coalesce() {
        Mv move = workListMoves.iterator().next();
        Reg x, y, u, v;
        x = getAlias(move.dest);
        y = getAlias(move.src);
        if (preColored.contains(y)) { u = y; v = x; }
        else { u = x; v = y; }
        workListMoves.remove(move);
        if (u == v) {addWorkList(u);}
        else if (preColored.contains(v) || adjSet.contains(new edge(u, v))) {addWorkList(u); addWorkList(v);}
        else {
            if ((preColored.contains(u) && checkOK(u, v)) || (!preColored.contains(u) && conservative(adjacent(u, v)))) {
                combine(u, v);
                addWorkList(u);
            }
            else activeMoves.add(move);
        }
    }
    private void addWorkList(Reg node) {
        if (!preColored.contains(node) && !moveRelated(node) && node.deg < K) {
            freezeWorkList.remove(node);
            simplifyWorkList.add(node);
        }
    }
    private boolean ok(Reg t, Reg r) {
        return t.deg < K || preColored.contains(t) || adjSet.contains(new edge(t, r));
    }
    private boolean checkOK(Reg u, Reg v) {
        boolean ret = true;
        for (Reg t : adjacent(v)) ret &= ok(t, u);
        return ret;
    }
    private boolean conservative(HashSet<Reg> nodes) {
        int count = 0;
        for (Reg node : nodes) if (node.deg >= K) ++count;
        return count < K;
    }
    private Reg getAlias(Reg n) {
        if (coalescedNodes.contains(n)) {
            Reg alias = getAlias(n.alias);
            n.alias = alias;
            return alias;
        }
        else return n;
    }
    private void combine(Reg u, Reg v) {
        if (freezeWorkList.contains(v)) freezeWorkList.remove(v);
        else spillWorkList.remove(v);
        coalescedNodes.add(v);
        v.alias = u;
        u.moveList.addAll(v.moveList);
        HashSet<Reg> tmp = new HashSet<>();tmp.add(v);
        enableMoves(tmp);
        adjacent(v).forEach(t -> {
            addEdge(t, u);
            decrementDegree(t);
        });
        if (u.deg >= K && freezeWorkList.contains(u)) {
            freezeWorkList.remove(u);
            spillWorkList.add(u);
        }
    }
    private void freezeMoves(Reg u) {
        nodeMoves(u).forEach(mv -> {
            Reg x = mv.dest, y = mv.src, v;
            if (getAlias(u) == getAlias(y)) v = getAlias(x);
            else v = getAlias(y);
            activeMoves.remove(mv);
            if (v.deg < K && nodeMoves(v).isEmpty()) {
                freezeWorkList.remove(v);
                simplifyWorkList.add(v);
            }
        });
    }
    private void freeze() {
        Reg u = freezeWorkList.iterator().next();
        freezeWorkList.remove(u);
        simplifyWorkList.add(u);
        freezeMoves(u);
    }
    private Reg getSpill() {
        Reg min = null;
        double minCost = 0;
        Iterator<Reg> iter = spillWorkList.iterator();
        while(iter.hasNext()) {
            min = iter.next();
            minCost = min.weight / min.deg;
            if (!spillIntroduce.contains(min)) break;
        }
        while(iter.hasNext()) {
            Reg reg = iter.next();
            if (!spillIntroduce.contains(reg) && (reg.weight / reg.deg < minCost)) {
                min = reg;
                minCost = reg.weight / reg.deg;
            }
        }
        return min;
    }
    private void selectSpill() {
        Reg m = getSpill();
        spillWorkList.remove(m);
        simplifyWorkList.add(m);
        freezeMoves(m);
    }
    private void assignColors() {
        while (!selectStack.isEmpty()) {
            Reg n = selectStack.pop();
            ArrayList<PhyReg> okColors = new ArrayList<>(root.assignableregs());
            HashSet<Reg> colored = new HashSet<>(coloredNodes);
            colored.addAll(preColored);
            n.adjList.forEach(w -> { if (colored.contains(getAlias(w))) okColors.remove(getAlias(w).color); });
            if (okColors.isEmpty()) spilledNodes.add(n);
            else {
                coloredNodes.add(n);
                n.color = okColors.get(0);
            }
        }
        coalescedNodes.forEach(n -> n.color = getAlias(n).color);
    }
    private void rewrite() {
        spilledNodes.forEach(v -> {
            v.stackoffset = new SLImm(-1 * stacklength - 4);
            stacklength += 4;
        });
        currentFn.blocks.forEach(block -> {
            for (RiscInst inst = block.head; inst != null; inst = inst.nxt)
                if (inst.dest instanceof VirReg)
                    getAlias(inst.dest);
        });
        currentFn.blocks.forEach(block -> {
            for (RiscInst inst = block.head; inst != null; inst = inst.nxt) {
                for (Reg reg : inst.uses()) {
                    if (reg.stackoffset != null) {
                        if (inst.defs().contains(reg)) {
                            VirReg tmp = new VirReg(((VirReg) reg).sz, ++currentFn.cnt);
                            spillIntroduce.add(tmp);
                            inst.replaceuse(reg, tmp);
                            inst.replacedest(reg, tmp);
                            inst.addpre(new Ld(root.getphyreg(2), tmp.sz, reg.stackoffset, tmp, block));
                            inst.addnxt(new St(root.getphyreg(2), tmp, reg.stackoffset, tmp.sz, block));
                        }
                        else {
                            if (inst instanceof Mv && ((Mv)inst).src == reg && inst.dest.stackoffset == null) {
                                RiscInst replace = new Ld(root.getphyreg(2), ((VirReg)reg).sz, reg.stackoffset, inst.dest, block);
                                inst.replaceby(replace);
                                inst = replace;
                            } else {
                                VirReg tmp = new VirReg(((VirReg) reg).sz, ++currentFn.cnt);
                                spillIntroduce.add(tmp);
                                inst.addpre(new Ld(root.getphyreg(2), tmp.sz, reg.stackoffset, tmp, block));
                                inst.replaceuse(reg, tmp);
                            }
                        }
                    }
                }
                for (Reg def : inst.defs()) {
                    if (def.stackoffset != null) {
                        if (!inst.uses().contains(def)) {
                            if (inst instanceof Mv && ((Mv) inst).src.stackoffset == null){
                                RiscInst replace = new St(root.getphyreg(2), ((Mv) inst).src, def.stackoffset, ((VirReg)def).sz, block);
                                inst.replaceby(replace);
                                inst = replace;
                            }
                            else {
                                VirReg tmp = new VirReg(((VirReg)def).sz, ++currentFn.cnt);
                                spillIntroduce.add(tmp);
                                inst.replacedest(def, tmp);
                                inst.addnxt(new St(root.getphyreg(2), tmp, def.stackoffset, ((VirReg)def).sz, block));
                            }
                        }
                    }
                }
            }
        });
    }
    private void runForFn(LFn fn){
        boolean done;
        do{
            init();
            new LivenessAnalysis(fn).runForFn();
            build();
            initial.forEach(node -> {
                if (node.deg >= K) spillWorkList.add(node);
                else if (moveRelated(node)) freezeWorkList.add(node);
                else simplifyWorkList.add(node);
            });
            do{
                if (!simplifyWorkList.isEmpty()) simplify();
                else if (!workListMoves.isEmpty()) coalesce();
                else if (!freezeWorkList.isEmpty()) freeze();
                else if (!spillWorkList.isEmpty()) selectSpill();
            }
            while (!(freezeWorkList.isEmpty() && simplifyWorkList.isEmpty()
                    && spillWorkList.isEmpty() && workListMoves.isEmpty()));
            assignColors();
            if (!spilledNodes.isEmpty()) {
                rewrite();
                done = false;
            } else done = true;
        }
        while(!done);
    }

    private void subtleModify() {
        currentFn.blocks.forEach(block -> {
            for (RiscInst inst = block.head; inst != null; inst = inst.nxt)
                inst.addstacklength(stacklength);
        });
        currentFn.blocks.forEach(block -> {
                    for (RiscInst inst = block.head; inst != null; inst = inst.nxt){
                        if (inst instanceof Mv && (((Mv) inst).src.color == inst.dest.color))
                            inst.removeSelf();
                    }
                }
        );
        HashSet<LBlock> canMix = new HashSet<>();
        currentFn.blocks.forEach(block -> {
            if (block.head instanceof Jp) canMix.add(block);
        });
        canMix.forEach(block -> {
            LBlock suc = block;
            do { suc = ((Jp)suc.head).destblock; }
            while (canMix.contains(suc));
            for (LBlock pre : block.pres) {
                for (RiscInst inst = pre.head; inst != null; inst = inst.nxt) {
                    if (inst instanceof Jp) ((Jp) inst).replacedestblock(block, suc);
                    else if (inst instanceof Br) ((Br) inst).replacedestblock(block, suc);
                    else if (inst instanceof Bz) ((Bz) inst).replacedestblock(block, suc);
                }
                pre.sucs.remove(block);
                pre.sucs.add(suc);
            }
            suc.pres.remove(block);
            suc.pres.addAll(block.pres);
            if (currentFn.entryblock == block) currentFn.entryblock = suc;
        });
        currentFn.blocks.removeAll(canMix);
    }
    private void reschedule() {
        HashSet<LBlock> visited = new HashSet<>();
        Queue<LBlock> queue = new LinkedList<>();
        queue.add(currentFn.entryblock);
        visited.add(currentFn.entryblock);
        do {
            LBlock currentBlock = queue.poll();
            assert currentBlock != null;
            if (currentBlock.tail instanceof Jp) {
                assert currentBlock.nxt == null;
                Jp jp = (Jp) currentBlock.tail;
                if (!jp.destblock.hasPrior) {
                    currentBlock.nxt = jp.destblock;
                    jp.destblock.hasPrior = true;
                    currentBlock.tail = jp.pre;
                    currentBlock.tail.nxt = null;
                    jp.pre = null;
                }
            }
            currentBlock.sucs.forEach(suc -> {
                if (!visited.contains(suc)) queue.offer(suc);
            });
            visited.addAll(currentBlock.sucs);
        }
        while(!queue.isEmpty());
    }
    public void run() {
        root.functions.forEach(fn -> {
            stacklength = 0;
            currentFn = fn;
            runForFn(fn);
            stacklength += fn.paramoffset;
            if (stacklength % 16 != 0) stacklength = (stacklength / 16 + 1) * 16;
            subtleModify();
            reschedule();
        });
    }
}
