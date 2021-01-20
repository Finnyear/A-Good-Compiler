package Util;

public class Type {
    public enum type{Int, String, Bool, Class};
    public String class_name;
    public int dimension;
    type type;
    public Type(type type){
        this.type = type;
        this.dimension = 0;
    }
    public Type(Type other){
        this.type = other.type;
        this.dimension = other.dimension;
        this.class_name = other.class_name;
    }
    public boolean cmp(Type other){
        if(this.dimension != other.dimension) return false;
        if(this.class_name != other.class_name) return false;
        if(this.type != other.type) return false;
        return true;
    }
}
