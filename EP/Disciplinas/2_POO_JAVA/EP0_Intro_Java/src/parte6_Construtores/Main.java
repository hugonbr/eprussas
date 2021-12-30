package parte6_Construtores;

public class Main {

    int x = 5;
    
    public Main (int y) {
    
        x = y;
    }
    
    public static void main(String[] args) {
        Main m = new Main(10);
        System.out.println(m.x);
    }
}
