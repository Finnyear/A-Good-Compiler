package Asm;

import Asm.LOperand.GReg;
import Asm.LOperand.PhyReg;
import Asm.LOperand.Reg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public class LRoot {
    public static ArrayList<String> phyregname = new ArrayList<>(Arrays.asList(
            "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
            "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "s2", "s3",
            "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
    ));

    public static ArrayList<Integer> savestatus = new ArrayList<>(Arrays.asList(
            0, 1, 0, 0, 0, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1
    ));

    public HashSet<LFn> functions = new HashSet<>(), builtinfunctions = new HashSet<>();
    private ArrayList<PhyReg> phyregs = new ArrayList<>();
    public ArrayList<PhyReg> callersaveregs = new ArrayList<>(), calleesaveregs = new ArrayList<>();
    private ArrayList<PhyReg> assignableregs = new ArrayList<>();
    public HashMap<GReg, String> strings = new HashMap<>();
    public HashSet<GReg> globalregs = new HashSet<>();

    public LRoot(){
        for(int i = 0; i < 32; i++){
            phyregs.add(new PhyReg(phyregname.get(i)));
            if(savestatus.get(i) == 1) callersaveregs.add(phyregs.get(i));
            if(savestatus.get(i) == 2) calleesaveregs.add(phyregs.get(i));
        }
        assignableregs.addAll(callersaveregs);
        assignableregs.addAll(calleesaveregs);
        assignableregs.remove(0);
        assignableregs.add(phyregs.get(1));
    }

    public void addbuiltinfunction(LFn fn){builtinfunctions.add(fn);}
    public HashSet<Reg> phyregs(){return new HashSet<>(phyregs);}
    public ArrayList<PhyReg> assignableregs(){return new ArrayList<>(assignableregs);}
    public void addString(GReg reg, String str){strings.put(reg, str);}
    public void addglobalreg(GReg reg){globalregs.add(reg);}
    public void addfunction(LFn fn){functions.add(fn);}
    public PhyReg getphyreg(int i){return phyregs.get(i);}
}
