package MIR;

import MIR.IRInst.*;
import MIR.IROperand.Register;
import Util.error.myError;
import Util.position;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class IRBlock {
    public ArrayList<IRBlock> pre_block = new ArrayList<>();
    public ArrayList<IRBlock> suc_block = new ArrayList<>();
    public HashMap<Register, Phi> Phis = new HashMap<>();
    public Inst head_inst = null, tail_inst = null;
    public Inst terminate = null;
    public String name;

    public IRBlock idom = null;
    public HashSet<IRBlock> domfrontiers = new HashSet<>();

    public Inst getnxt(Inst inst){
        if(inst == tail_inst) return terminate;
        else return inst.nxt;
    }

    public Inst gethead(){
        if(head_inst == null) return terminate;
        return head_inst;
    }

    public Inst gettail(){
        if(terminate == null) return tail_inst;
        else return terminate;
    }

    public IRBlock(String name){
        this.name = name;
    }

    public void add_pre_block(IRBlock precursor){
        pre_block.add(precursor);
    }

    public void add_suc_block(IRBlock successor){
        suc_block.add(successor);
    }

    public void addinst(Inst inst){
        if(head_inst == null) head_inst = tail_inst = inst;
        else{
            tail_inst.nxt = inst;
            inst.pre = tail_inst;
            tail_inst = inst;
        }
    }

    public void removepre(IRBlock block){
        pre_block.remove(block);
        Phis.forEach(((register, phi) -> phi.removeblock(block)));
    }

    public void addheadinst(Inst inst){
        if(head_inst == null) head_inst = tail_inst = inst;
        else{
            head_inst.pre = inst;
            inst.nxt = head_inst;
            head_inst = inst;
        }
    }

    public void removeinlist(Inst inst) {
        if (inst.nxt != null) inst.nxt.pre = inst.pre;
        else tail_inst = inst.pre;
        if (inst.pre != null) inst.pre.nxt = inst.nxt;
        else head_inst = inst.nxt;
    }

    public void removeinst(Inst inst){
        if(inst instanceof Phi) Phis.remove(inst.dest);
        else if(inst instanceof TerminalInst)
            removeterminate();
        else removeinlist(inst);
    }

    public void addterminate(Inst inst){
//        if(terminate != null) throw new myError("add terminate again!", new position(0, 0));
        terminate = inst;
        if(terminate instanceof Jump){
            ((Jump) terminate).destblock.add_pre_block(this);
            this.add_suc_block(((Jump) terminate).destblock);
        }
        if(terminate instanceof Branch){
            ((Branch) terminate).true_br_block.add_pre_block(this);
            ((Branch) terminate).false_br_block.add_pre_block(this);
            this.add_suc_block(((Branch) terminate).true_br_block);
            this.add_suc_block(((Branch) terminate).false_br_block);
        }
    }

    public void removeterminate(){
        if(terminate == null) throw new myError("remove terminate wrong!", new position(0, 0));
        if(terminate instanceof Jump){
            ((Jump) terminate).destblock.removepre(this);
            this.suc_block.remove(((Jump) terminate).destblock);
        }
        if(terminate instanceof Branch){
//            System.out.println("remove " + terminate);
            ((Branch) terminate).true_br_block.removepre(this);
            ((Branch) terminate).false_br_block.removepre(this);
            this.suc_block.remove(((Branch) terminate).true_br_block);
            this.suc_block.remove(((Branch) terminate).false_br_block);
        }
        terminate = null;
    }

    public void addphi(Phi phi){
        Phis.put((Register)phi.dest, phi);
    }

    public boolean returnflag(){
        return terminate != null && terminate instanceof Return;
    }

    public void replacesuc(IRBlock old, IRBlock neww){
        if(terminate instanceof Jump){
//            System.out.println("Jump");
            terminate.removeself(true);
            addterminate(new Jump(neww, this));
        }
        else{
//            System.out.println("Branch");
            Branch oldbr = (Branch) terminate, newbr;
            if(oldbr.true_br_block == old) newbr = new Branch(oldbr.cond, neww, oldbr.false_br_block, this);
            else newbr = new Branch(oldbr.cond, oldbr.true_br_block, neww, this);
            terminate.removeself(true);
            addterminate(newbr);
        }
    }

    public void merge(IRBlock block){
        suc_block.addAll(block.suc_block);
        block.suc_block.forEach(suc_block -> {
            suc_block.pre_block.remove(block);
            suc_block.pre_block.add(this);
            suc_block.Phis.forEach(((register, phi) -> {
                int sz = phi.blocks.size();
                for(int i = 0; i < sz; i++)
                    if(phi.blocks.get(i) == block) phi.blocks.set(i, this);
            }));
        });
        block.Phis.forEach(((register, phi) -> phi.block = this));
        for(Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
            inst.block = this;
        if(gettail() != null) gettail().nxt = block.head_inst;
        if(block.head_inst != null) block.head_inst.pre = gettail();
        if(gethead() == null) head_inst = block.head_inst;
        if(block.tail_inst != null) tail_inst = block.tail_inst;
        terminate = block.terminate;
    }

    public void split(IRBlock block, Inst inst) {
        suc_block.forEach(suc -> {
            suc.Phis.forEach(((register, phi) -> {
                int sz = phi.blocks.size();
                for(int i = 0; i < sz; i++)
                    if(phi.blocks.get(i) == this) phi.blocks.set(i, block);
            }));
            suc.pre_block.remove(this);
            suc.pre_block.add(block);
        });
        block.suc_block.addAll(suc_block);
        suc_block.clear();

        block.head_inst = inst.nxt;
        block.tail_inst = inst == tail_inst ? null : tail_inst;
        if(inst.nxt != null)inst.nxt.pre = null;
        for(Inst instr = getnxt(inst);instr != null; instr = getnxt(instr))
            instr.block = block;
        block.terminate = terminate;
        terminate = null;
        tail_inst = inst.pre;
        if (tail_inst != null) tail_inst.nxt = null;
        if (head_inst == inst) head_inst = null;
    }
}
