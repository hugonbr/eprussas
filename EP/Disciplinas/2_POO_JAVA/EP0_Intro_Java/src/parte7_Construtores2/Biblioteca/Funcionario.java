package parte7_Construtores2.Biblioteca;

public class Funcionario {

    private final String nome;
    private final int idade;

    public Funcionario(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

}
