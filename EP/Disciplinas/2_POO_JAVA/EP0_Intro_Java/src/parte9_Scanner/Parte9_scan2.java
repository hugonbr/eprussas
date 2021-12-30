package parte9_Scanner;

import java.util.Scanner;

public class Parte9_scan2 {

    public static void main(String[] args) {
        //Nome e a idade
        Scanner input = new Scanner(System.in);
        String nome;
        System.out.print("Digite o seu nome: ");
        nome = input.nextLine();
        System.out.println("Você digitou: " + nome);
        System.out.print("Digite a sua idade: ");
        int idade;
        idade = input.nextInt();
        System.out.println("E sua idade é: " + idade);
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