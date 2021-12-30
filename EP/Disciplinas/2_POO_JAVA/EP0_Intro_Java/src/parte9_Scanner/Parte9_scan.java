package parte9_Scanner;

import java.util.Scanner;

public class Parte9_scan {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String nome;
        System.out.print("Digite o seu nome: ");
        nome = input.nextLine();
        System.out.println("Você digitou: " + nome);
        System.out.print("Você gostou desse algoritmo em Java? (Sim/não)?: ");
        char resposta;
        resposta = input.nextLine().charAt(0);
        //r = 'S'
        if (resposta == 's' || resposta == 'S') {
            System.out.println("Obrigado!!!");
        } else {
            System.out.println("Que pena :/");
        }
    }
}

//nextBoolean()	Reads a boolean value from the user
//nextByte()	Reads a byte value from the user
//nextDouble()	Reads a double value from the user
//nextFloat()	Reads a float value from the user
//nextInt()	Reads a int value from the user
//nextLine()	Reads a String value from the user
//nextLine().charAt(0)	Reads a String value from the user
//nextLong()	Reads a long value from the user
//nextShort()	Reads a short value from the user