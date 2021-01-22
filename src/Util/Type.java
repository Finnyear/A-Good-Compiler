package Util;

public class Type {
    public enum type{Int, String, Bool, Class, Void, Null};
    public String class_name;
    public int dimension;
    public type tp;
    public Type(){}
    public Type(type tp){
        this.tp = tp;
        this.class_name = null;
        this.dimension = 0;
    }
    public Type(type tp, String class_name, int dimension){
        this.tp = tp;
        this.class_name = class_name;
        this.dimension = dimension;
    }
    public Type(Type other){
        this.tp = other.tp;
        this.dimension = other.dimension;
        this.class_name = other.class_name;
    }
    public boolean cmp(Type other){
        if(this.dimension != other.dimension) return false;
        if(this.class_name != other.class_name) return false;
        if(this.tp != other.tp) return false;
        return true;
    }
}
