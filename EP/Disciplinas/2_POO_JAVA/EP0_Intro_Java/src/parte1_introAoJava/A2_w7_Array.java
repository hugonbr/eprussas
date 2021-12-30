package parte1_introAoJava;

import java.util.Scanner;

public class A2_w7_Array {

    public static void main(String[] args) {

        //                      0123      12,13,14
        String marcas_carros = "Fiat, Ford, BMW, Ferrari";
        System.out.println(marcas_carros);
        System.out.print(marcas_carros.charAt(17));
        System.out.print(marcas_carros.charAt(18));
        System.out.print(marcas_carros.charAt(19));
        System.out.print(marcas_carros.charAt(20));
        System.out.print(marcas_carros.charAt(21));
        System.out.print(marcas_carros.charAt(22));
        System.out.print(marcas_carros.charAt(23));
        System.out.println("");
        //Vetor(Array) de Strings           //2
        String[] carros = {"Fiat", "Ford", "BMW", "Ferrari"};
        System.out.println(carros[3]);//Ferrari
//        carros[1] = "Fiat";
//        System.out.println(carros[1]);
//        System.out.println("Tamanho do Array carros: " + carros.length);
    }
}
