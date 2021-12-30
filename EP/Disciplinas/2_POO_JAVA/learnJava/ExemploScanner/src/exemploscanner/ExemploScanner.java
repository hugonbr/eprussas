package exemploscanner;

import java.util.Scanner;

public class ExemploScanner {

    public static void main(String[] args) {
        //Alg. que lê uma string e diz qual string foi lida.
        Scanner entrada = new Scanner(System.in);
        String salvar;
        System.out.print("Digite uma String: ");
        salvar = entrada.nextLine();
        System.out.println("A String lida foi: " + salvar);
    }

}
