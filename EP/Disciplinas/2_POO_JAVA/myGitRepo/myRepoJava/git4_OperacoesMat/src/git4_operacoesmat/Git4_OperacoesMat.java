/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git4_operacoesmat;

import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class Git4_OperacoesMat {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner entrada = new Scanner(System.in);
        double n1, n2;
        System.out.print("Digite o n1: ");
        n1 = entrada.nextDouble();
        System.out.print("Digite o n2: ");
        n2 = entrada.nextDouble();
        System.out.println(n1 + "+" + n2 + " = " + (n1 + n2));
        System.out.println(n1 + "-" + n2 + " = " + (n1 - n2));
        System.out.println(n1 + "*" + n2 + " = " + (n1 * n2));
        System.out.println(n1 + "/" + n2 + " = " + (n1 / n2));
    }
}
