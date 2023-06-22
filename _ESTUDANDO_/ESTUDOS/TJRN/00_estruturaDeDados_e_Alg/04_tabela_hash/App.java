import java.util.HashMap;
import java.util.Map;

public class App {

    public static void main(String[] args) {
        // criar uma tabela hash de inteiros
        Map<String, Integer> tabelaHash = new HashMap<>();

        // adicionar elementos à tabela hash
        tabelaHash.put("um", 1);
        tabelaHash.put("dois", 2);
        tabelaHash.put("três", 3);

        // imprimir a tabela hash
        System.out.println("Tabela hash: " + tabelaHash);

        // obter o valor associado à chave "dois"
        int valor = tabelaHash.get("dois");
        System.out.println("Valor associado à chave 'dois': " + valor);

        // remover o elemento associado à chave "dois"
        tabelaHash.remove("dois");

        // imprimir a tabela hash atualizada
        System.out.println("Tabela hash atualizada: " + tabelaHash);

        // verificar se a tabela hash contém a chave "dois"
        if (tabelaHash.containsKey("dois")) {
            System.out.println("A tabela hash contém a chave 'dois'.");
        } else {
            System.out.println("A tabela hash não contém a chave 'dois'.");
        }
    }
}
