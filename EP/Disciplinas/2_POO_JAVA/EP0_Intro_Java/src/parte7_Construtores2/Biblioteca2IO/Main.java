package parte7_Construtores2.Biblioteca2IO;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {

    static int menu;
    static int id = 1;
    static Scanner in = new Scanner(System.in);

    static LocalDateTime myDateObj = LocalDateTime.now();
    static DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    static String formattedDate = myDateObj.format(myFormatObj);

    static ArrayList<Emprestimo> emprestimos = new ArrayList<Emprestimo>();

    public static void inserirEmprestimo() {
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite o nome do aluno: ");
        String nome = insert.nextLine();
        System.out.print("Digite a matricula do aluno: ");
        String matricula = insert.nextLine();
        Aluno aluno = new Aluno(nome, matricula);
        System.out.print("Digite o nome do funcionario: ");
        Funcionario funcionario = new Funcionario(insert.nextLine());
        System.out.print("Digite o titulo do livro: ");
        Livro livro = new Livro(insert.nextLine());
        Emprestimo emp = new Emprestimo(id, aluno, funcionario, livro, formattedDate);
        emprestimos.add(emp);
        id++;
    }

    public static void ExibirEmprestimos() {

        Iterator<Emprestimo> it = emprestimos.iterator();
        System.out.println("LISTA DE EMPRESTIMOS");
        while (it.hasNext()) {
            Emprestimo emp = it.next();
            System.out.print("ID: " + emp.getId());
            System.out.print("; Data/Hora: " + emp.getData_hora());
            System.out.print("; Livro: " + emp.getLivro().getTitulo());
            System.out.print("; Aluno: " + emp.getAluno().getNome());
            System.out.println("; Funcionário: " + emp.getFuncionario().getNome());
        }
    }

    public static void ExibirEmprestimosAluno() {
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite a matricula do aluno: ");
        String matricula = insert.nextLine();
        Iterator<Emprestimo> it = emprestimos.iterator();
        while (it.hasNext()) {
            Emprestimo emp = it.next();
            if (emp.getAluno().getMatricula().equals(matricula)) {
                System.out.print("ID: " + emp.getId());
                System.out.print("; Data/Hora: " + emp.getData_hora());
                System.out.print("; Livro: " + emp.getLivro().getTitulo());
                System.out.print("; Aluno: " + emp.getAluno().getNome());
                System.out.println("; Funcionário: " + emp.getFuncionario().getNome());
                //break;
            }
        }
    }

    public static void AlimentaBD(String nome_aluno, String matricula, String nome_funcionario, String nome_livro, String data_hora) {
        Aluno aluno = new Aluno(nome_aluno, matricula);
        Funcionario funcionario = new Funcionario(nome_funcionario);
        Livro livro = new Livro(nome_livro);
        Emprestimo emp = new Emprestimo(id, aluno, funcionario, livro, data_hora);
        emprestimos.add(emp);
        id++;
    }

    public static void main(String[] args) {
        AlimentaBD("Hugo", "001", "Maria", "POO Java", "23-01-2021 10:13:45");
        AlimentaBD("Hugo", "001", "Maria", "Banco de Dados", "04-02-2021 14:22:17");
        AlimentaBD("Carlos", "002", "Maria", "Matemática", "13-02-2021 11:00:04");
        AlimentaBD("Paulo", "003", "Pedro", "Física", "14-02-2021 9:31:05");

        do {
            System.out.println("Bem-vindo ao LibSis");
            System.out.println("1 - Inserir um novo emprestimo");
            System.out.println("2 - Exibir emprestimo de um aluno");
            System.out.println("3 - Exibir todos os emprestimos");
            System.out.println("0 - Sair");
            System.out.print("Entrada: ");
            menu = in.nextInt();
            try {
                Runtime.getRuntime().exec("clear");
            } catch (IOException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
            switch (menu) {
                case 0:
                    System.out.println("Bye!");
                    break;
                case 1:
                    inserirEmprestimo();
                    break;
                case 2:
                    ExibirEmprestimosAluno();
                    break;
                case 3:
                    ExibirEmprestimos();
                    break;
            }

        } while (menu != 0);

    }

}
