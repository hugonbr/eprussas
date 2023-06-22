class Node {
    int data;
    Node left, right;

    public Node(int item) {
        data = item;
        left = right = null;
    }
}

public class ArvoreBinaria {
    Node raiz;

    ArvoreBinaria(int key) {
        raiz = new Node(key);
    }

    ArvoreBinaria() {
        raiz = null;
    }

    // adc depois
    // Para exibir os elementos de uma árvore binária em ordem, pode-se usar uma abordagem recursiva conhecida como "percurso em ordem" (ou "inorder traversal", em inglês). Este percurso visita cada nó da árvore exatamente uma vez e imprime o valor do nó na ordem em que os nós são visitados.

    // Aqui está um exemplo de como implementar um método para exibir os elementos de uma árvore binária em ordem:
    public void exibirEmOrdem(Node no) {
        if (no != null) {
            exibirEmOrdem(no.left);
            System.out.print(no.data + " ");
            exibirEmOrdem(no.right);
        }
    }

    // fim adc depois

    public static void main(String[] args) {
        ArvoreBinaria arvore = new ArvoreBinaria();
        arvore.raiz = new Node(1);
        arvore.raiz.left = new Node(2);
        arvore.raiz.right = new Node(3);
        arvore.raiz.left.left = new Node(4);
        arvore.raiz.left.right = new Node(5);

        System.out.println("Árvore binária criada com sucesso");

        // adc depois
        System.out.print("Elementos da árvore em ordem: ");
        arvore.exibirEmOrdem(arvore.raiz);
        System.out.println();
    }
}
