/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git9_array;

/**
 *
 * @author hugo-nathan
 */
public class Git9_Array {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        String[] carros = {"Fiat", "Ford", "Ferrari", "BMW"};
        for (int i = 0; i < carros.length; i++) {
            System.out.print(carros[i] + "; ");
        }
        System.out.println();
        for (var i : carros) {
            System.out.print(i + "; ");
        }
        System.out.println();
    }
}
