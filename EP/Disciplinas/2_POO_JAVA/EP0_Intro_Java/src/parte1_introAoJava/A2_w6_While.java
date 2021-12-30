package parte1_introAoJava;

public class A2_w6_While {

    public static void main(String[] args) {

//        int i = 0;
//        while (i<10) {
//            System.out.println(i++);
//        }
        
        int x = 1;//1
        x++;//2
        while (x == 2) { //false
            System.out.println("true");
            if (x == 2) {
                x++;
            }
        }
        System.out.println(x);
    }
}

//System.out.println(++i);

