package Util;

import java.util.HashMap;

public class classType extends Type{
    public HashMap<String, Type> vars;
    public HashMap<String, Type> funs;
    public HashMap<String, Type> cons;

    public classType(type tp, String class_name){
        this.tp = tp;
        this.class_name = class_name;
    }

    public classType(Type other){
        super(other);
    }

    public classType(classType other){
        super(other);
        this.vars = other.vars;
        this.funs = other.funs;
        this.cons = other.cons;
    }
}
