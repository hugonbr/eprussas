package parte1_introAoJava;

import java.util.Scanner;

public class A2_w6_While2 {

    public static void main(String[] args) {

        char entrada;
        Scanner leitor = new Scanner(System.in);
        
        do {            
            System.out.print("Digite 'C' para Continuar ou 'P' para parar: ");
            entrada = leitor.nextLine().charAt(0);
        } while (entrada !='P' && entrada !='p');
    }
}


