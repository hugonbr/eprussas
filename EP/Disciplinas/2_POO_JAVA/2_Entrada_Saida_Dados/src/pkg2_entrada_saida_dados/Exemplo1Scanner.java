package pkg2_entrada_saida_dados;
import java.util.Scanner;

public class Exemplo1Scanner {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);
        System.out.print("Digite um nome: ");        
        String nome = in.nextLine();        
        System.out.println("Você digitou: " + nome);
    }

}
