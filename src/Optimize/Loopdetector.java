package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.Jump;
import MIR.IRInst.Phi;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRLoop;

import java.util.*;

public class Loopdetector {

    private IRFunction func;
    private HashMap<IRBlock, IRLoop> loopmap = new HashMap<>();
    private HashSet<IRBlock> vis = new HashSet<>();
    private Stack<IRLoop> loopStack = new Stack<>();
    private boolean addpreheader;
    public Loopdetector(IRFunction func, boolean addprehead){
        this.func = func;
        this.addpreheader = addprehead;
    }

    public HashSet<IRLoop> rootloop = new HashSet<>();

    private void collect(IRBlock tail, IRBlock head) {
        if (!loopmap.containsKey(head)) {
            IRLoop loop = new IRLoop();
            loopmap.put(head, loop);
        }
        loopmap.get(head).tails.add(tail);
    }
    private void addprehead(IRBlock head, IRLoop loop) {
        ArrayList<IRBlock> precursors = new ArrayList<>(head.pre_block);
        precursors.removeAll(loop.tails);
        if (precursors.size() == 1) loop.prehead = precursors.get(0);
        else {
            IRBlock preHead = new IRBlock("Prehead of " + head.name);
            func.blocks.add(preHead);
            for (Iterator<Map.Entry<Register, Phi>> iter = head.Phis.entrySet().iterator(); iter.hasNext();) {
                Map.Entry<Register, Phi> entry = iter.next();
                Phi phi = entry.getValue();
                boolean removeflag = true;

                ArrayList<entity> entities = phi.entities;
                ArrayList<IRBlock> blocks = phi.blocks;
                Phi mirrorphi = null;
                for (int i = 0; i < entities.size(); ++i) {
                    if (!loop.tails.contains(blocks.get(i))) {
                        if (mirrorphi == null) {
                            mirrorphi = new Phi(new ArrayList<>(), new ArrayList<>(),
                                    new Register(phi.dest.type, "preHead phi of " + phi.dest.name),preHead);
                            preHead.addphi(mirrorphi);
                        }
                        mirrorphi.addsrc(entities.get(i), blocks.get(i));
                        blocks.remove(i); entities.remove(i);
                        i--;
                    } else removeflag = false;
                }

                if (removeflag) {
                    iter.remove();
                    phi.dest.replaceusewith(mirrorphi.dest);
                } else if (mirrorphi != null) phi.addsrc(mirrorphi.dest, preHead);
            }

            precursors.forEach(precursor -> precursor.replacesuc(head, preHead));
            preHead.addterminate(new Jump(head, preHead));
            loop.prehead = preHead;
        }
    }

    private void getloop(IRBlock tail, IRBlock head){
        HashSet<IRBlock> blocks = new HashSet<>();
        Queue<IRBlock> queue = new LinkedList<>();
        blocks.add(head);
        blocks.add(tail);
        queue.offer(tail);
        while(!queue.isEmpty()) {
            IRBlock block = queue.poll();
            block.pre_block.forEach(pre -> {
                if (!blocks.contains(pre)) {
                    blocks.add(pre);
                    queue.offer(pre);
                }
            });
        }
        loopmap.get(head).blocks.addAll(blocks);
    }


    private void judgeoutofloop(IRBlock block) {
        if (!loopStack.isEmpty())
            while (!loopStack.isEmpty() && !loopStack.peek().blocks.contains(block)) loopStack.pop();
    }
    private void visit(IRBlock block) {
        vis.add(block);
        judgeoutofloop(block);
        if (loopmap.containsKey(block)) {
            IRLoop loop = loopmap.get(block);
            if (loopStack.isEmpty()) rootloop.add(loop);
            else loopStack.peek().children.add(loop);
            loopStack.push(loop);
        }
        block.loopdepth = loopStack.size();
        block.suc_block.forEach(suc -> {
            if (!vis.contains(suc)) visit(suc);
        });
    }

    public void runforfn() {
        //assume that the dominator relation is correct.
        func.blocks.forEach(block -> {
            for (IRBlock suc : block.suc_block)
                if (block.isdomed(suc)) {
                    collect(block, suc);
                    break;
                }
        });
        loopmap.forEach(this::addprehead);
        loopmap.forEach((head, loop) -> loop.tails.forEach(tail -> getloop(tail, head)));
        visit(func.entryblock);
    }
}
