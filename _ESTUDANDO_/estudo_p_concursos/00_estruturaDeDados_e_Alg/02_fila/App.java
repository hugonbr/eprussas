import java.util.LinkedList;
import java.util.Queue;

public class App {

    public static void main(String[] args) {
        // criar uma fila de inteiros
        Queue<Integer> fila = new LinkedList<>();

        // adicionar elementos à fila
        fila.add(10);
        fila.add(20);
        fila.add(30);
        fila.add(40);
        fila.add(50);

        // imprimir a fila
        System.out.println("Fila: " + fila);

        // remover um elemento da fila e imprimir o elemento removido
        int primeiro = fila.remove();
        System.out.println("Elemento removido: " + primeiro);

        // imprimir a fila novamente
        System.out.println("Fila atualizada: " + fila);

        // obter o elemento na frente da fila sem removê-lo
        int frente = fila.peek();
        System.out.println("Elemento na frente da fila: " + frente);

        // verificar se a fila está vazia
        if (fila.isEmpty()) {
            System.out.println("A fila está vazia.");
        } else {
            System.out.println("A fila não está vazia.");
        }
    }
}
