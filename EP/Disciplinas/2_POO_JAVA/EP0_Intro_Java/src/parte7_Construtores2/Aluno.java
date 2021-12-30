package parte7_Construtores2;

public class Aluno {

    private final String nome;
    private final int idade;

    public Aluno(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    //getters e setters alt+insert

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

}
