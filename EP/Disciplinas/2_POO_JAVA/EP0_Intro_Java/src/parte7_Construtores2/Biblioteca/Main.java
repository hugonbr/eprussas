package parte7_Construtores2.Biblioteca;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
public class Main {

    public static void main(String[] args) {
        Livro harryPotter = new Livro("Harry Potter", "J. K. Rowling");
        Livro gameOfThrones = new Livro("Game of Thrones", "George R.R. Martin");
        Funcionario maria = new Funcionario("Maria", 40);
        Aluno joao = new Aluno("João da Silva", 16);
        Aluno jose = new Aluno("José Lima", 17);

        LocalDateTime myDateObj = LocalDateTime.now();
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String formattedDate = myDateObj.format(myFormatObj);

        ArrayList<Emprestimo> emprestimos = new ArrayList<Emprestimo>();

        Emprestimo emprestimo1 = new Emprestimo(1,joao, maria, harryPotter, formattedDate);
        Emprestimo emprestimo2 = new Emprestimo(2,jose, maria, gameOfThrones, formattedDate);
        emprestimos.add(emprestimo1);
        emprestimos.add(emprestimo2);

        Iterator<Emprestimo> it = emprestimos.iterator();
        while (it.hasNext()) {
            Emprestimo emp = it.next();
            System.out.print("ID: " + emp.getId());
            System.out.print("; Data/Hora: " + emp.getData_hora());
            System.out.print("; Livro: " + emp.getLivro().getTitulo());
            System.out.print("; Aluno: " + emp.getAluno().getNome());
            System.out.println("; Funcionário: " + emp.getFuncionario().getNome());
        }
    }
}
