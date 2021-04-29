package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.Inst;
import MIR.IRInst.Load;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.Root;
import Util.IRLoop;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

public class LICM {
    Root IRroot;
    private boolean change;
    private AliasAnalysis alias;

    public LICM(Root IRroot, AliasAnalysis alias){
        this.IRroot = IRroot;
        this.alias = alias;
    }


    private void hoist(Inst inst, HashSet<Register> defInLoop, Queue<Inst> canHoist) {
        if (inst instanceof Load) {
            HashSet<entity> uses = inst.uses();
            uses.retainAll(defInLoop);
            if (uses.isEmpty() && !alias.storeinloop((Load)inst)) {
                defInLoop.remove(inst.dest);
                canHoist.add(inst);
            }
        } else if (inst.nosideeffect()) {
            HashSet<entity> uses = inst.uses();
            uses.retainAll(defInLoop);
            if (uses.isEmpty()) {
                defInLoop.remove(inst.dest);
                canHoist.add(inst);
            }
        }
    }

    private void runforloop(IRLoop loop) {
        if (!loop.children.isEmpty())
            loop.children.forEach(this::runforloop);

        HashSet<Register> reginloop = new HashSet<>();
        Queue<Inst> canhoist = new LinkedList<>();

        loop.blocks.forEach(block -> {
            block.Phis.forEach((reg, phi) -> reginloop.add(reg));
            for(Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                if (inst.dest != null) reginloop.add(inst.dest);
        });
        alias.buildstoreinloop(loop);
        IRBlock pre = loop.prehead;
        loop.blocks.forEach(block -> {
            for(Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                hoist(inst, reginloop, canhoist);
        });
        change = change || !canhoist.isEmpty();
        while (!canhoist.isEmpty()) {
            Inst inst = canhoist.poll();
            if(inst.nxt != null) inst.nxt.pre = inst.pre;
            else inst.block.tail_inst = inst.pre;
            if(inst.pre != null) inst.pre.nxt = inst.nxt;
            else inst.block.head_inst = inst.nxt;
            pre.addinst(inst);
            inst.dest.uses().forEach(useInst -> {
                if (reginloop.contains(useInst.dest)) hoist(useInst, reginloop, canhoist);
            });
        }
    }

    private void runforfn(IRFunction func){
        Loopdetector loops = new Loopdetector(func);
        loops.runforfn();
        loops.rootloop.forEach(this :: runforloop);

    }

    public boolean run(){
        change = false;
        IRroot.functions.forEach(((s, irFunction) -> runforfn(irFunction)));
        return change;
    }
}
