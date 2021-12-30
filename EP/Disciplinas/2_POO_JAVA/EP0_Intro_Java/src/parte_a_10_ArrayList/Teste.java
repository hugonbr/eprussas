package parte_a_10_ArrayList;

import java.util.ArrayList;

public class Teste {

    public static void main(String[] args) {

        ArrayList<String> carros;
        carros = new ArrayList();
        
        carros.add("Fiat");
        carros.add("Volkswagen");
        carros.add("Chevrolet");
        carros.add("Ford");
        System.out.println(carros.get(1));

    }
}
