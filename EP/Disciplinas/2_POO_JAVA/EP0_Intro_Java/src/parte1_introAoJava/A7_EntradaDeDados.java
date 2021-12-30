package parte1_introAoJava;

import java.util.Scanner;

public class A7_EntradaDeDados {

    public static void main(String[] args) {
        int idade;
        String nome;

        Scanner teclado = new Scanner(System.in);
        System.out.print("Digite o seu nome: ");
        nome = teclado.nextLine();
        System.out.print("Digite a sua idade: ");
        idade = teclado.nextInt();
        System.out.println("Seu nome é " + nome + " e você tem " + idade + " anos");
    }
}
