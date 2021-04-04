package MIR;

import MIR.IROperand.Param;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.IRType.IRType;
import MIR.IRType.IRarrayType;
import Util.IRFnGraph;

import java.beans.IntrospectionException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;

public class IRFunction {
    public String name;
    public Param classptr = null;
    public IRType returnType = null;
    public ArrayList<Param> params = new ArrayList<>();
    public LinkedHashSet<IRBlock> blocks = new LinkedHashSet<>();
    public HashSet<Register> allocvars = new HashSet<>();
    public IRBlock entryblock = new IRBlock("entry"), exitblock = entryblock;
    public HashSet<IRFunction> callfunctions = new HashSet<>();


    public IRFunction(String name){
        this.name = name;
        blocks.add(entryblock);
    }

    public void setclass(Param classptr){
        this.classptr = classptr;
        params.add(classptr);
    }

    public void setrettype(IRType rettype){
        this.returnType = rettype;
    }

    public void addcalleefunction(IRFunction fun){
        callfunctions.add(fun);
    }

    public boolean iscallee(IRFunction fun){
        return callfunctions.contains(fun);
    }
}
