package parte7_Construtores2.Biblioteca2IO;

public class Emprestimo {

    private final Aluno aluno;
    private final Funcionario funcionario;
    private final Livro livro;
    private final String data_hora;
    private final int id;

    public Emprestimo(int id, Aluno aluno, Funcionario funcionario, Livro livro, String data_hora) {
        this.id = id;
        this.aluno = aluno;
        this.funcionario = funcionario;
        this.livro = livro;
        this.data_hora = data_hora;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public Livro getLivro() {
        return livro;
    }

    public String getData_hora() {
        return data_hora;
    }

    public int getId() {
        return id;
    }

}
