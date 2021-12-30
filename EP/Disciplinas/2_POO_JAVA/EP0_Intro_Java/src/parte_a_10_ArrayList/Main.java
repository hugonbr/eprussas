package parte_a_10_ArrayList;

import java.util.ArrayList;
import java.util.Collections;

public class Main {

    public static void main(String[] args) {

        ArrayList<String> carros = new ArrayList<String>();

        carros.add("Fiat");
        carros.add("Volkswagen");
        carros.add("Chevrolet");
        carros.add("Ford");
        carros.set(2, "Peugeot");
        System.out.println(carros.get(2));
        System.out.println("---------------");
        System.out.println(carros);
        Collections.sort(carros); //ordena alfabeticamente ou numericamente

        for (String i : carros) {
            System.out.println(i);
        }
        //cars.remove(0);
        //cars.clear();
        //cars.size();

    }
}
