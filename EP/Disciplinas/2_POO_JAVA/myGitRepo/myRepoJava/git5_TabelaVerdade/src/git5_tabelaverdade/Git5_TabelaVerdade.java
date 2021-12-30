/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git5_tabelaverdade;

/**
 *
 * @author hugo-nathan
 */
public class Git5_TabelaVerdade {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("E lógico");
        System.out.println((true && true) + "=" + (1 & 1)); //V 1
        System.out.println((true && false) + "=" + (1 & 0)); //F 0
        System.out.println((false && true) + "=" + (0 & 1)); //F 0
        System.out.println((false && false) + "=" + (0 & 0)); //F 0

        System.out.println("OU lógico");
        System.out.println((true || true) + "=" + (1 | 1)); //V 1
        System.out.println((true || false) + "=" + (1 | 0)); //V 1
        System.out.println((false || true) + "=" + (0 | 1)); //V 1
        System.out.println((false || false) + "=" + (0 | 0)); //F 0

        System.out.println("Negação");
        //O operador NOT inverte o sinal e complementa em um.
        System.out.println(!true + "=" + (~1)); //-2
        System.out.println(!false + "=" + (~0)); //-1
    }
}
