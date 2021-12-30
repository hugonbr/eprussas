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
public class A2_w2_Inc_Dec2 {

    public static void main(String[] args) {
        int x = 15, y = 2, z = 4;
        z++; //5
        z-=5; // z = z - 5 //0
        x = z + y; // 2
        System.out.println(x); // 2
        y--; //1
        System.out.println(y); // 1
        System.out.println(z); // 0
        
    }
}
