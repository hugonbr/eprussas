package parte1_introAoJava;

public class A2_w5_For3_Tab {

    public static void main(String[] args) {
        //Tabuada do 1 ao 10
        for (int i = 1; i < 11; i++) {
            System.out.println("Tabuada do "+ i +": ");
            for (int j = 1; j < 11; j++) {
                System.out.println(i + "x" + j + "=" + (i*j));
            }
        }
    }
}
