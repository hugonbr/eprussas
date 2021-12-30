/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javatesting;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class JavaTesting {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        ArrayList<String> listaMateriaisEscolares = new ArrayList<String>();
        
        Scanner entrada = new Scanner(System.in);
        //
        char resposta;
        do {
            System.out.print("Você deseja adc algo na lista(S/n)?");
            resposta = entrada.nextLine().charAt(0);
            if (resposta == 'S' || resposta == 's') {
                System.out.print("Adicione algo na lista: ");
                String item = entrada.nextLine();
                listaMateriaisEscolares.add(item);
            }
        } while (resposta == 'S' || resposta == 's');

        //
        System.out.println(listaMateriaisEscolares);

    }

}
