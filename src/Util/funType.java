package Util;

import java.util.ArrayList;

public class funType extends Type{
    public Type returntype;
    public ArrayList<Type> paras;
    public funType(Type returntype, ArrayList<Type> paras){
        this.returntype = returntype;
        this.paras = paras;
    }
}