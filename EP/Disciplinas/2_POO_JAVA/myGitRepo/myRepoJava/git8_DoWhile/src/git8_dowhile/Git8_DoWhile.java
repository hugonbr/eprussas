/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git8_dowhile;

import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class Git8_DoWhile {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        char entrada;
        Scanner leitor = new Scanner(System.in);
        
        do {            
            System.out.print("Digite 'C' para Continuar ou 'P' para parar: ");
            entrada = leitor.nextLine().charAt(0);
        } while (entrada !='P' && entrada !='p');
    }
    
}
