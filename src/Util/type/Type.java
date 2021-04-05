package Util.type;

public class Type {
    public enum type{Int, Bool, Class, Void, Null};
    public String class_name;
    public type tp;
    public Type(){}
    public Type(type tp){
        this.tp = tp;
        this.class_name = null;
    }
    public Type(type tp, String class_name){
        this.tp = tp;
        this.class_name = class_name;
    }
    public Type(Type other){
        this.tp = other.tp;
        this.class_name = other.class_name;
    }
    public boolean cmp(Type other){
        if(this.tp == type.Null)
            return !(other instanceof arrayType || (other.tp != type.Int && other.tp != type.Bool));
        if(other.tp == type.Null)
            return !(this instanceof arrayType || (this.tp != type.Int && this.tp != type.Bool));
        if(this.class_name != other.class_name) return true;
        if(this.tp != other.tp) return true;
        if(this instanceof arrayType && !(other instanceof arrayType)) return true;
        if(!(this instanceof arrayType) && other instanceof arrayType) return true;
        return false;
    }

    public int size(){
        if(tp == type.Int) return 32;
        if(tp == type.Bool) return 8;
        return 0;
    }
}
