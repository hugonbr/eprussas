package parte1_introAoJava;
import java.util.Scanner;

public class A7_Balada_EntradaDeDados {
    public static void main(String[] args) {
        int idade;
        String amigoDoDono;
        
        Scanner teclado = new Scanner (System.in);
        System.out.print("Você é amigo do dono? (sim ou não): ");
        amigoDoDono = teclado.nextLine();
        System.out.print("Digite a sua idade: ");
        idade = teclado.nextInt();

        
        if (idade >= 18 || amigoDoDono.equals("sim")) {
            System.out.println("Pode entrar");
        } else {
            System.out.println("Não pode entrar");
        }
    }
}
