/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git6_tabuada;

/**
 *
 * @author hugo-nathan
 */
public class Git6_Tabuada {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        for (int i = 1; i < 11; i++) {
            System.out.println("Tabuada do " + i + ": ");
            for (int j = 1; j < 11; j++) {
                System.out.println(i + "x" + j + "=" + (i * j));
            }
        }
    }

}
