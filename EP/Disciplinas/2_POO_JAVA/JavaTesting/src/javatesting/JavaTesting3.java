package javatesting;

import java.util.ArrayList;
import java.util.Iterator;

public class JavaTesting3 {

    public static void main(String[] args) {

        ArrayList<String> listaSuper = new ArrayList<String>();
        listaSuper.add("Café");
        listaSuper.add("Banana");
        listaSuper.add("Bolacha");
        listaSuper.add("Biscoito");

        Iterator<String> item = listaSuper.iterator();
        
        int i = 1;
        while (item.hasNext()) {
            System.out.println("Posição " + i + ":" + item.next() + "; ");
            i++;
        }
        System.out.println("");

    }
}
