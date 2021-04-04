package Asm;

import Asm.LOperand.Reg;
import Asm.RiscInst.RiscInst;

import java.util.ArrayList;
import java.util.HashSet;

public class LBlock {
    public ArrayList<LBlock> pres = new ArrayList<>();
    public ArrayList<LBlock> sucs = new ArrayList<>();
    public HashSet<Reg> liveIn = new HashSet<>(), liveout = new HashSet<>();
    public RiscInst head = null, tail = null;
    public String name;
    public LBlock nxt = null;
    public boolean hasPrior = false;

    public LBlock(String name){
        this.name = name;
    }

    public void addInst(RiscInst inst){
        if(head == null) head = inst;
        else {
            tail.nxt = inst;
            inst.pre = tail;
        }
        tail = inst;
    }

    @Override
    public String toString(){return name;}
}
