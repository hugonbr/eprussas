/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte1_introAoJava;

/**
 *
 * @author hugo-nathan
 */
public class A2_w4_ifElse {

    public static void main(String[] args) {
        int x = 20;
        int y = 18;
        x += 5; //x = 25
        y--; //y= 17
        x -= 10; //x=15
        x++; //x=16
        if (x > y) { //16 > 17
            System.out.println("x é maior que y");
        } else if (x < y) { //16 < 17
            System.out.println("x é menor que y");
        } else {
            System.out.println("x é igual a y");
        }
    }
}
