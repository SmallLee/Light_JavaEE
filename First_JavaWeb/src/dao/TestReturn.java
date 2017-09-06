package dao;

public class TestReturn {
    public static void main(String[] args) {
        TestReturn tr = new TestReturn();
        System.out.println(tr.getInfo("a"));
    }

    public String getInfo(String name){
        if (name.equals("a")) {
            try {
                int a = 4/0;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "info";
        } else {
            return "err";
        }
    }
}
