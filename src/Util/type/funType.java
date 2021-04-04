package Util.type;

import MIR.IRFunction;

import java.util.ArrayList;

public class funType extends Type {
    public Type returntype;
    public ArrayList<Type> paras;
    public IRFunction IRfunc;
    public boolean inclass;
    public funType(Type returntype, ArrayList<Type> paras, boolean inclass){
        this.returntype = returntype;
        this.paras = paras;
        this.inclass = inclass;
    }
}