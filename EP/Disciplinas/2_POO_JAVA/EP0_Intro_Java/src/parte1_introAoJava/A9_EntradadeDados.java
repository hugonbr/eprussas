package parte1_introAoJava;
import java.util.Scanner;
public class A9_EntradadeDados {
    public static void main (String[] args) {
        String nome;
        int idade;
        double nota;
        Scanner teclado = new Scanner (System.in);
        System.out.print("Digite o seu nome: ");
        nome = teclado.nextLine();
        System.out.print("Digite a sua idade: ");
        idade = teclado.nextInt();
        System.out.print("Digite a sua nota: ");
        nota = teclado.nextDouble();
        System.out.println("Nome: " + nome + ". Idade: " + idade + ". Nota: " + nota);
    }
}
