package MIR.IRType;

import java.util.ArrayList;

public class IRclassType extends IRType{
    public ArrayList<IRType> types = new ArrayList<>();
    private String name;
    private int size = 0;

    public IRclassType(String name){
        super();
        this.name = name;
    }

    public void addmember(IRType type){
        types.add(type);
        size += type.size();
    }

    public int geteleoffset(int idx){
//        System.out.println(idx);
        int ans = 0;
        for(int i = 0; i < idx; i++)
            ans += types.get(i).size();
        return ans;
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public String toString() {
        return "%struct." + name;
    }

    @Override
    public boolean sameas(IRType other) {
        return other instanceof IRclassType && ((IRclassType) other).name.equals(name);
    }
}
