import java.util.Stack;

public class App {

    public static void main(String[] args) {
        // criar uma pilha de inteiros
        Stack<Integer> pilha = new Stack<>();

        // adicionar elementos à pilha
        pilha.push(10);
        pilha.push(20);
        pilha.push(30);

        // imprimir a pilha
        System.out.println("Pilha: " + pilha);

        // remover um elemento do topo da pilha e imprimir o elemento removido
        int topo = pilha.pop();
        System.out.println("Elemento removido: " + topo);

        // imprimir a pilha novamente
        System.out.println("Pilha atualizada: " + pilha);

        // obter o elemento no topo da pilha sem removê-lo
        int elemento = pilha.peek();
        System.out.println("Elemento no topo da pilha: " + elemento);

        // verificar se a pilha está vazia
        if (pilha.isEmpty()) {
            System.out.println("A pilha está vazia.");
        } else {
            System.out.println("A pilha não está vazia.");
        }
    }
}
