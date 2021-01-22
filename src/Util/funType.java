package Util;

import java.util.ArrayList;

public class funType extends Type{
    public ArrayList<Type> paras;
    public funType(Type returntype, ArrayList<Type> paras){
        super(returntype);
        this.paras = paras;
    }
}