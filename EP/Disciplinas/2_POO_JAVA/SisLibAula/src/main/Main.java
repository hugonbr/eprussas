/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class Main {

    static ArrayList<Emprestimo> emprestimos = new ArrayList<Emprestimo>();
    static ArrayList<String> horariosMarcados = new ArrayList<String>();
    
    static int id = 1;
    

    static final LocalDateTime myDateObj = LocalDateTime.now();
    static final DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    static String formattedDate = myDateObj.format(myFormatObj);

    private static void inserirEmprestimo() {
        //System.out.println("Em implementação...");
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite o nome do aluno: ");
        String nome = insert.nextLine();
        System.out.print("Digite a matricula do aluno: ");
        String matricula = insert.nextLine();
        Aluno aluno = new Aluno(nome, matricula);
        System.out.print("Digite o titulo do livro: ");
        Livro livro = new Livro(insert.nextLine());
        Emprestimo emp = new Emprestimo(id, aluno, livro, formattedDate);
        emprestimos.add(emp);
        id++;
    }

    private static void ExibirEmprestimosAluno() {
        //System.out.println("Em implementação...");
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite a matricula do aluno: ");
        String matricula = insert.nextLine();
        Iterator<Emprestimo> it = emprestimos.iterator();
        boolean alunoSemEmprestimos = true;
        while (it.hasNext()) {
            Emprestimo emp = it.next();
            if (emp.getAluno().getMatricula().equals(matricula)) {
                System.out.print("ID: " + emp.getId());
                System.out.print("; Aluno: " + emp.getAluno().getNome());
                System.out.print("; Data/Hora: " + emp.getData_hora());
                System.out.println("; Livro: " + emp.getLivro().getTitulo());
                alunoSemEmprestimos = false;
            }
        }
        if (alunoSemEmprestimos) {
            System.out.println("Este aluno não possui emprestimos");
        }
    }

    private static void ExibirEmprestimos() {
        //System.out.println("Em implementação...");
        Iterator<Emprestimo> it = emprestimos.iterator();
        System.out.println("LISTA DE EMPRESTIMOS");
        if (emprestimos.isEmpty()) {
            System.out.println("Esta Biblioteca não possui empréstimos");
        } else {
            while (it.hasNext()) {
                Emprestimo emp = it.next();
                System.out.print("ID: " + emp.getId());
                System.out.print("; Aluno: " + emp.getAluno().getNome());
                System.out.print("; Data/Hora: " + emp.getData_hora());
                System.out.println("; Livro: " + emp.getLivro().getTitulo());
            }
        }
    }

    public static void AlimentaBD(String nome_aluno, String matricula, String nome_livro, String data_hora) {
        Aluno aluno = new Aluno(nome_aluno, matricula);
        Livro livro = new Livro(nome_livro);
        Emprestimo emp = new Emprestimo(id, aluno, livro, data_hora);
        emprestimos.add(emp);
        id++;
    }

    public static void main(String[] args) {
                
        /*
        
        Título: Sistema para gerenciamento de emprestimos
        de livros de uma biblioteca.
        
        Classes: 
        1) Empréstimos (Livro, Aluno, data_hora);
        2) Livro (titulo)
        3) Aluno (nome, matricula)
        
        métodos: (O que o usuário vai fazer nesse sistema?)
        
        1) Inserir emprestimos
        2) Exibir TODOS os emprestimos
        3) Exibir o emprestimo de um aluno
        
         */

//        AlimentaBD("Hugo", "001", "POO Java", "23-01-2021 10:13:45");
//        AlimentaBD("Hugo", "001", "Banco de Dados", "04-02-2021 14:22:17");
//        AlimentaBD("Carlos", "002", "Matemática", "13-02-2021 11:00:04");
//        AlimentaBD("Paulo", "003", "Física", "14-02-2021 9:31:05");

        int menu;
        Scanner entrada = new Scanner(System.in);
        do {
            System.out.println("Bem-vindo ao LibSis");
            System.out.println("1 - Inserir um novo emprestimo");
            System.out.println("2 - Exibir emprestimo de um aluno");
            System.out.println("3 - Exibir todos os emprestimos");
            System.out.println("0 - Sair");
            System.out.print("Entrada: ");
            menu = entrada.nextInt();

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
