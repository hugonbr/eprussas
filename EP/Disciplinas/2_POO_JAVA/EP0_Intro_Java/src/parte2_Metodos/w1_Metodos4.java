package parte2_Metodos;

public class w1_Metodos4 {

    static int e_quadrado (int n /*4*/) {
        return n * n; /* 4 * 4 */
    }
    
    //Método para elevar um número ao quadrado
    public static void main(String[] args) {

        System.out.println(e_quadrado(4));
        System.out.println(e_quadrado(5));
        System.out.println(e_quadrado(9));
        System.out.println(e_quadrado(10));
    }
}
