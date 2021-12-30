/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javatesting;

import java.util.ArrayList;

/**
 *
 * @author hugo-nathan
 */
public class JavaTesting2 {

    public static void main(String[] args) {
        ArrayList<String> cars = new ArrayList<String>();
        cars.add("Volvo");//0
        cars.add("BMW");//1
        cars.add("Ford");//2
        cars.add("Mazda");//3
        //size = 4
        for (int i = 0; i < cars.size(); i++) {
            System.out.println(cars.get(i));
        }
        System.out.println(cars);
    }
}
