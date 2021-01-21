package Util;

import Util.error.SemanticError;

import java.util.HashMap;

public class globalscope extends Scope{
    private HashMap<String, Type> types = new HashMap<>();

    public globalscope(Scope parentScope){super(parentScope);}

    public void addType(String str, Type type, position pos){
        if(types.containsKey(str)){
            throw new SemanticError("class redefined", pos);
        }
        types.put(str, type);
    }

    public Type getType(String str, position pos){
        if(types.containsKey(str)) return types.get(str);
        throw new SemanticError("cannot find such type", pos);
    }
}
