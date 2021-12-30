/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git7_forwhiledowhile;

/**
 *
 * @author hugo-nathan
 */
public class Git7_ForWhileDoWhile {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //for
        for (char i = 65; i < 91; i++) {
            System.out.print(i + "; ");
        }
        System.out.println("");

        //while
        char i = 65;
        while (i < 91) {
            System.out.print(i + "; ");
            i++;
        }
        System.out.println("");

        //do while
        i = 65;
        do {
            System.out.print(i + "; ");
            i++;
        } while (i < 91);
        System.out.println("");
    }

}
