package Util.type;

import Util.scope.Scope;
import Util.varentity;

import java.util.ArrayList;
import java.util.HashMap;

public class classType extends Type {
    public HashMap<String, Integer> Indexes = new HashMap<>();
    public Scope scope;
    public int cnt = 0, allocsz = 0;
    public varentity thisent;
    public ArrayList<Type> elementtypelist = new ArrayList<>();

    public classType(type tp, String class_name){
        this.tp = tp;
        this.class_name = class_name;
        thisent = new varentity("this entity", this, false);
    }
    public int setelement(Type type){
        int ans = elementtypelist.size();
        elementtypelist.add(type);
        allocsz += type.size();
        return ans;
    }

    @Override
    public int size() {
        return 32; // a pointer !
    }
}
