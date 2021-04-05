package Util.scope;

import MIR.IRType.IRType;
import MIR.IRType.IRclassType;
import MIR.IRType.IRintType;
import MIR.IRType.IRpointerType;
import Util.error.SemanticError;
import Util.error.myError;
import Util.position;
import Util.scope.Scope;
import Util.type.Type;
import Util.type.classType;
import Util.type.arrayType;

import java.util.HashMap;

public class globalScope extends Scope {
    private final HashMap<String, Type> types = new HashMap<>();
    private final HashMap<Type, IRType> IRtypes = new HashMap<>();

    public globalScope(Scope parentScope){super(parentScope);}

    public void addType(String str, Type type, position pos){
//        System.out.println("addType");
//        System.out.println(str);
        if(types.containsKey(str)){
            throw new SemanticError("class redefined", pos);
        }
        types.put(str, type);
        IRtypes.put(type, new IRclassType(str));
    }

    public Type getType(String str, position pos){
//        System.out.println("getType");
//        System.out.println(str);
        if(types.containsKey(str)) return types.get(str);
        throw new SemanticError("cannot find such type", pos);
    }

    public IRType getIRType(Type type){
        if(IRtypes.containsKey(type)) return IRtypes.get(type);
        throw new myError("cannot find such IRtype", new position(0, 0));
    }

    public IRType getnewIRType(Type type){
        if(type instanceof classType){
            return new IRclassType(type.class_name);
        }
        if(type instanceof arrayType){
            return new IRpointerType(getnewIRType(((arrayType) type).subarray()), false);
        }
        if(type.tp == Type.type.Bool){
            return new IRintType(8);
        }
        if(type.tp == Type.type.Int){
            return new IRintType(32);
        }
        throw new myError("get new IRtype wrong", new position(0, 0));
    }
}
