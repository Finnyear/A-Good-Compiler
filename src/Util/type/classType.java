package Util.type;

import Util.scope.Scope;

import java.util.ArrayList;
import java.util.HashMap;

public class classType extends Type {
    public HashMap<String, Type> vars = new HashMap<>();
    public HashMap<String, Type> funs = new HashMap<>();
    public HashMap<String, Type> cons = new HashMap<>();
    public HashMap<String, Integer> Indexes = new HashMap<>();
    public Scope scope;
    public int cnt = 0, sz = 0;

    public ArrayList<Type> elementtypelist = new ArrayList<>();

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
        this.Indexes = other.Indexes;
        this.cnt = other.cnt;
    }

    public int setelement(Type type){
        int ans = elementtypelist.size();
        elementtypelist.add(type);
        return ans;
    }
}
