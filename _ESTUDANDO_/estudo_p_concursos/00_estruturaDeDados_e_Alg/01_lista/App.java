import java.util.ArrayList;

public class App {

    public static void main(String[] args) {
        // criar uma lista de strings
        ArrayList<String> lista = new ArrayList<>();

        // adicionar elementos à lista
        lista.add("Java");
        lista.add("Python");
        lista.add("JavaScript");

        // percorrer a lista e imprimir cada elemento
        for (String elemento : lista) {
            System.out.println(" * " + elemento);
        }

        // remover um elemento da lista
        lista.remove("Python");
        System.out.println("Python foi removido.");

        // verificar se a lista contém um elemento específico
        if (lista.contains("Java")) {
            System.out.println("A lista contém Java.");
        }

        // obter o tamanho da lista
        System.out.println("Tamanho da lista: " + lista.size());

        for (String elemento : lista) {
            System.out.println(" * " + elemento);
        }
    }
}
