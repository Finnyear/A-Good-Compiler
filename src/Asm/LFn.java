package Asm;

import Asm.LOperand.Reg;

import java.util.ArrayList;
import java.util.HashSet;

public class LFn {
    public HashSet<LBlock> blocks = new HashSet<>();
    public ArrayList<Reg> params = new ArrayList<>();
    public LBlock entryblock, exitblock;
    public int paramoffset = 0;
    public int cnt;
    public String name;

    public LFn(String name, LBlock entryblock, LBlock exitblock){
        this.entryblock = entryblock;
        this.exitblock = exitblock;
        this.name = name;
    }

    public void addparam(Reg param){params.add(param);}
    public void addblock(LBlock block){blocks.add(block);}
}
