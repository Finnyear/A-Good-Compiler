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
            ((Jump) terminate).destblock.pre_block.remove(this);
            this.suc_block.remove(((Jump) terminate).dest);
        }
        if(terminate instanceof Branch){
            ((Branch) terminate).true_br_block.pre_block.remove(this);
            ((Branch) terminate).false_br_block.pre_block.remove(this);
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
            removeterminate();
            addterminate(new Jump(neww, this));
        }
        else{
            Branch oldbr = (Branch) terminate, newbr;
            if(oldbr.true_br_block == old) newbr = new Branch(oldbr.cond, neww, oldbr.false_br_block, this);
            else newbr = new Branch(oldbr.cond, oldbr.true_br_block, neww, this);
            removeterminate();
            addterminate(newbr);
        }
    }
}
