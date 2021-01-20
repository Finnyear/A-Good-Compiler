package Util;

import Util.error.SemanticError;

import java.util.HashMap;
import java.util.HashSet;

public class Scope {
//    HashSet<DefVar> members;
    private HashMap<String, Type> members;
    private Scope parentScope;
    public Scope(Scope parentScope){
        this.parentScope = parentScope;
        members = new HashMap<String, Type>();
    }
    public Scope getParentScope(){
        return parentScope;
    }
    public void addvar(String name, Type type, position pos){
        if(members.containsKey(name))
            throw new SemanticError("variable redefined", pos);
        members.put(name, type);
    }
    public boolean qryvar(String name, boolean lookupon){
        if(members.containsKey(name))
            return true;
        if(parentScope != null && lookupon)
            return parentScope.qryvar(name, true);
        return false;
    }
    public Type getType(String name, boolean lookupon){
        if(members.containsKey(name))
            return members.get(name);
        if(parentScope != null && lookupon)
            return parentScope.getType(name, true);
        return null;
    }
}
