/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git2_scanner;

import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class Git2_Scanner {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String nome;
        System.out.print("Digite o seu nome: ");
        Scanner input1 = new Scanner(System.in);
        nome = input1.next();
        System.out.println("Você digitou: " + nome);
        System.out.print("Você gostou desse algoritmo em Java? (Sim/não)?: ");
        char resposta;
        Scanner input2 = new Scanner(System.in);
        resposta = input2.next().charAt(0);
        if (resposta == 's' || resposta == 'S') {
            System.out.println("Obrigado!!!");
        } else {
            System.out.println("Que pena :/");
        }
        System.out.println("Editado para o Git :)");
    }
    
}
