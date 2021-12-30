package parte7_Construtores2.Biblioteca2IO;

public class Aluno {

    private final String nome;
    private final String matricula;

    public Aluno(String nome, String matricula) {
        this.nome = nome;
        this.matricula = matricula;
    }

    public String getNome() {
        return nome;
    }

    public String getMatricula() {
        return matricula;
    }
}
