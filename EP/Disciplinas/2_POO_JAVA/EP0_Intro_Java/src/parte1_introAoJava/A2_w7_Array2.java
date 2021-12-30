package parte1_introAoJava;

import java.util.Scanner;

public class A2_w7_Array2 {

    public static void main(String[] args) {

        String[] carros = {"Volvo", "BMW", "Ford", "Mazda"};
        for (int i = 0; i < carros.length; i++) {
            System.out.print(carros[i] + "; ");
        }
        System.out.println();
        for (String i : carros) {
            System.out.print(i + "; ");
        }
        System.out.println();

    }
}
