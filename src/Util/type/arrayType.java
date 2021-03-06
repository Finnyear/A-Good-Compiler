package Util.type;

public class arrayType extends Type {
    public Type basictype;
    public int dimision;
    public arrayType(Type basictype, int dimision){
        this.basictype = basictype;
        this.dimision = dimision;
    }
    public Type subarray(){
        return dimision > 1 ? new arrayType(this.basictype, this.dimision - 1) : this.basictype;
    }

    @Override
    public boolean cmp(Type other) {
        boolean sp = super.cmp(other);
        if(this.tp == type.Null || other.tp == type.Null) return false;
        if(sp) return sp;
        if(other instanceof arrayType)
            return this.dimision != ((arrayType) other).dimision || this.basictype.cmp(((arrayType) other).basictype);
        return true;
    }

    @Override
    public int size() {
        return 32; // a pointer;
    }
}
