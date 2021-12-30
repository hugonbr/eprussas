package parte3_POO;

public class w1_POO2 {

    int x = 5;

    public static void main(String[] args) {

        w1_POO2 meuObj = new w1_POO2();
        w1_POO2 meuObj2 = new w1_POO2();
        System.out.println(meuObj.x);
        System.out.println(meuObj2.x);
        meuObj2.x = 7;
        System.out.println(meuObj.x);
        System.out.println(meuObj2.x);
    }
}
