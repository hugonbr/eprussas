package parte1_introAoJava;

public class A2_Variavel4_tipos {

    public static void main(String[] args) {
        int meuNumero = -5;               // integer (whole number)
        float meuFloat = -15.99f;         // floating point number
        double meuDouble = 19.99d;
        char minhaLetra = 'O';            // character
        boolean meuBoolean = false;       // boolean
        String meuTexto = "Hello";        // String    
        System.out.println(meuNumero + 7); // -5 + 7 = 2
        System.out.println(meuFloat - 0.01f); // -16
        System.out.println(meuDouble); //
        System.out.println("" + minhaLetra + 'K'); // OK
        System.out.println(meuBoolean || true); // true
        System.out.println(meuTexto + " World!"); //Hello World!
        System.out.println(meuTexto.concat(" World!").length());
        System.out.println("pneumoultramicroscopicossilicovulcanoconiótico".length());
    }
}
