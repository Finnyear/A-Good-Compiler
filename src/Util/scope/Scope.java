package Util.scope;

import MIR.IRFunction;
import MIR.IROperand.entity;
import Util.error.SemanticError;
import Util.error.myError;
import Util.position;
import Util.type.Type;
import Util.varentity;

import java.util.HashMap;

public class Scope {
    public HashMap<String, Type> vars, funs;
    public HashMap<String, varentity> entities = new HashMap<>();
    public HashMap<String, IRFunction> IRfunctions = new HashMap<>();
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
        if((parentScope != null) && (lookupon == true))
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
        if((parentScope != null) && (lookupon == true))
            return parentScope.qryfun(name, true);
        return false;
    }
    public Type getfunType(String name, boolean lookupon){
        if(funs.containsKey(name))
            return funs.get(name);
        if(parentScope != null && lookupon)
            return parentScope.getfunType(name, true);
        return null;
    }

    public void addentity(String name, varentity enty){
        if(entities.containsKey(name))
            throw new myError("entity name reused", new position(0, 0));
        entities.put(name, enty);
    }

    public varentity getentity(String name, boolean lookupon){
        if(entities.containsKey(name))
            return entities.get(name);
        if((parentScope != null) && (lookupon == true))
            return parentScope.getentity(name, true);
        return null;
    }

    public void addIRfun(String name, IRFunction IRfun){
        if(IRfunctions.containsKey(name))
            throw new myError("function name reused", new position(0, 0));
        IRfunctions.put(name, IRfun);
    }

    public IRFunction getIRfun(String name, boolean lookupon){
        if(IRfunctions.containsKey(name))
            return IRfunctions.get(name);
        if((parentScope != null) && (lookupon == true))
            return parentScope.getIRfun(name, true);
        return null;
    }


}
