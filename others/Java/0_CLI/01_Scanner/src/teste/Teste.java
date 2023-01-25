// package teste;

import java.util.Scanner;

public class Teste {
	public static void main(String[] args) {
		
	    Scanner leitor = new Scanner(System.in);

	    System.out.print("Digite o seu nome: ");
	    String nome = leitor.nextLine();
	    leitor.close();

	    System.out.print("Olá " + nome + ".\nBem-vindo ao Eclipse Java :)");

	}
}
