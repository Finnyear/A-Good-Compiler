package Util;

import Util.error.SemanticError;

import java.util.HashMap;
import java.util.HashSet;

public class Scope {
    public HashMap<String, Type> vars, funs;
    public Scope parentScope;
    public Scope(Scope parentScope){
        this.parentScope = parentScope;
        vars = new HashMap<>();
        funs = new HashMap<>();
    }
    public Scope getParentScope(){
        return parentScope;
    }

    public void addvar(String name, Type type, position pos){
        if(vars.containsKey(name))
            throw new SemanticError("variable redefined", pos);
        vars.put(name, type);
    }
    public boolean qryvar(String name, boolean lookupon){
        if(vars.containsKey(name))
            return true;
        if(parentScope != null && lookupon)
            return parentScope.qryvar(name, true);
        return false;
    }
    public Type getvarType(String name, boolean lookupon){
        if(vars.containsKey(name))
            return vars.get(name);
        if(parentScope != null && lookupon)
            return parentScope.getvarType(name, true);
        return null;
    }

    public void addfun(String name, Type type, position pos){
        if(funs.containsKey(name))
            throw new SemanticError("variable redefined", pos);
        funs.put(name, type);
    }
    public boolean qryfun(String name, boolean lookupon){
        if(funs.containsKey(name))
            return true;
        if(parentScope != null && lookupon)
            return parentScope.qryvar(name, true);
        return false;
    }
    public Type getfunType(String name, boolean lookupon){
        if(funs.containsKey(name))
            return funs.get(name);
        if(parentScope != null && lookupon)
            return parentScope.getfunType(name, true);
        return null;
    }

}
