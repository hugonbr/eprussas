// Sem importãncia
package javaapplication1;

// Importar o scanner
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

// Classe
public class Main {

    static ArrayList<String> classificacoes = new ArrayList<String>();

    static void exibirLivros() {

        Scanner scan = new Scanner(System.in);

        System.out.print("Digite a classificação que deseja exibir: ");
        String escolha = scan.next();

        Iterator<String> it = classificacoes.iterator();
        
        while (it.hasNext()) {
            System.out.println(it.next());
        }

    }

    // Main
    public static void main(String[] args) {

        // ConfiguraÃ§Ãµes dos livros
        classificacoes.add("Ficcao Cientifica");
        classificacoes.add("Autoajuda");
        classificacoes.add("Livros Historicos");
        classificacoes.add("Livros Cientificos");
        classificacoes.add("Livros Educacionais");

        // ConfiguraÃ§Ã£o do scanner
        Scanner scanner = new Scanner(System.in);

        // Pedir o que o usuÃ¡rio deseja fazer
        System.out.println("\n");
        System.out.print("Bem vindo(a) a database de livros! Por favor, escolha uma opção:  \n");
        System.out.println("1. Exibir as categorias dos livros");
        System.out.println("2. Adicionar um novo livro");
        System.out.println("3. Sair");

        // Input do usuÃ¡rio
        int escolhaUsuário = scanner.nextInt();
        System.out.println("\n");

        // Caso o input seja 1, o usuÃ¡rio escolhe o livro
        if (escolhaUsuário == 1) {

            exibirLivros();
            // Caso o input do usuÃ¡rio seja 2, ele adiciona um livro (Apenas na mesma execuÃ§Ã£o, pois nÃ£o sei como adicionar este cÃ³digo Java em um banco de dados)
        } else if (escolhaUsuário == 2) {

            // Pedir para o usuÃ¡rio adicionar o livro
            System.out.println("Adicione um livro: (POR FAVOR UTILIZAR UNDERLINES (_) OU TRAÃ‡OS (-) PARA OS ESPAÃ‡OS) ");

            // Pedir o nome do livro
            System.out.print("Nome: ");
            String nomeUsuário = scanner.next();

            // Pedir o ano
            System.out.print("Ano: ");
            int anoUsuário = scanner.nextInt();

            // Pedir o preÃ§o
            System.out.print("PreÃ§o: R$ ");
            float preçoUsuário = scanner.nextFloat();

            // Pedir o autor
            System.out.print("Autor: ");
            String autorUsuário = scanner.next();

            System.out.print("Classificação: ");
            String classificaçãoUsuário = scanner.next();

            // Perguntar se o usuÃ¡rio deseja ver o livro adicionado
            System.out.println("\n");
            System.out.println("Deseja exibir o livro adicionado?");
            System.out.println("\n");
            System.out.println("1. Sim");
            System.out.println("2. Sair");

            // Pedir o input se deseja ver o livro ou nÃ£o
            int exibirUsuário = scanner.nextInt();

            // Se o input do usuÃ¡rio for 1, exibir o livro adicionado pelo usuÃ¡rio
            if (exibirUsuário == 1) {

                // Print do livro do usuÃ¡rio
                System.out.println("Nome do livro: " + nomeUsuário);
                System.out.println("Ano: " + anoUsuário);
                System.out.println("Preço: R$ " + preçoUsuário);
                System.out.println("Autor(a): " + autorUsuário);
                System.out.println("Classificação: " + classificaçãoUsuário);
                System.out.println("\n");
            }

            /* ObservaÃ§Ã£o: NÃ£o Ã© necessÃ¡rio fazer um if para o input 3, jÃ¡ que Ã© apenas a saida,
             o programa nÃ£o faz nada, assim saindo do programa. */
        }

    }

}
