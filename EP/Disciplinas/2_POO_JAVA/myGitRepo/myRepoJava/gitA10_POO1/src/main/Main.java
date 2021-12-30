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

    static ArrayList<Emprestimo> listaDeEmprestimos = new ArrayList<Emprestimo>();
    static int id = 1;

    static void inserirEmprestimo() {
        
        /*
        1) Entrada de Dados (Aluno, Livro -> Emprestimo)
        2) Add o emp no ArrayList
         */
        LocalDateTime myDateObj = LocalDateTime.now();
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String dataHoraFormatada = myDateObj.format(myFormatObj);

        Scanner entrada = new Scanner(System.in);
        //Aluno
        System.out.print("Digite o nome do aluno: ");
        String nomeAluno = entrada.nextLine();
        System.out.print("Digite a matricula do aluno: ");
        String matricula = entrada.nextLine();
        Aluno aluno = new Aluno(nomeAluno, matricula);
        //Livro
        System.out.print("Digite o título do Livro: ");
        Livro livro = new Livro(entrada.nextLine());
        //Adc o emp no ArrayList de emprestimos
        Emprestimo emp = new Emprestimo(id, aluno, livro, dataHoraFormatada);
        listaDeEmprestimos.add(emp);
        id++;
    }

    static void exibirEmprestimos() {
        /*
        1) Usar um Iterator para percorrer e exibir o ArrayList
         */
        Iterator<Emprestimo> it = listaDeEmprestimos.iterator();
        System.out.println("LISTA DE EMPRÉSTIMOS");
        if (listaDeEmprestimos.isEmpty()) {
            System.out.println("A biblioteca ainda não possui empréstimos");
        } else {
            while (it.hasNext()) {
                Emprestimo emp = it.next();
                System.out.print("ID: " + emp.getId());
                System.out.print("; Aluno: " + emp.getAluno().getNome());
                System.out.print("; Livro: " + emp.getLivro().getTitulo());
                System.out.println("; Data/Hora: " + emp.getData_hora());
            }
        }
    }

    static void exibirEmprestimosAluno() {
        /*
        1) Pegar a matricula do aluno
        2) Usar um Iterator para percorrer o ArrayList
           2.1) Se o emp.getAluno().getMatricula() == matricula
                2.1.1) Exibir esse emprestimo
         */
        Scanner entrada = new Scanner(System.in);
        System.out.print("Digite a matricula do aluno: ");
        String matricula = entrada.nextLine();
        Iterator<Emprestimo> it = listaDeEmprestimos.iterator();
        boolean alunoSemEmprestimos = true;
        while (it.hasNext()) {
            Emprestimo emp = it.next();
            if (emp.getAluno().getMatricula().equals(matricula)) {
                System.out.print("ID: " + emp.getId());
                System.out.print("; Aluno: " + emp.getAluno().getNome());
                System.out.print("; Livro: " + emp.getLivro().getTitulo());
                System.out.println("; Data/Hora: " + emp.getData_hora());
                alunoSemEmprestimos = false;
            }
        }
        if (alunoSemEmprestimos) {
            System.out.println("Este aluno não possui empréstimos");
        }
    }

    public static void AlimentaBD(String nome_aluno, String matricula, String nome_livro, String data_hora) {
        Aluno aluno = new Aluno(nome_aluno, matricula);
        Livro livro = new Livro(nome_livro);
        Emprestimo emp = new Emprestimo(id, aluno, livro, data_hora);
        listaDeEmprestimos.add(emp);
        id++;
    }

    public static void main(String[] args) {
        /*
        
        Título: Sistema para gerenciamento de emprestimos
        de livros de uma biblioteca.
        
        Classes: 
        1) Empréstimos (Livro, Aluno, data_hora);
        EX: Aluno: Hugo; Data/Hora: 23-01-2021 10:13:45; Livro: POO Java
        EX: Aluno: João; Data/Hora: 24-01-2021 11:13:45; Livro: Matemática II
        Estrutura de Armazenamento: ArrayList<Emprestimo>
        
        2) Livro (titulo)
        3) Aluno (nome, matricula)
        
        métodos: (O que o usuário vai fazer nesse sistema?)
        
        1) Inserir emprestimos
        2) Exibir TODOS os emprestimos
        3) Exibir o emprestimo de um aluno
        
         */

        AlimentaBD("Hugo", "001", "POO Java", "23-01-2021 10:13:45");
        AlimentaBD("Hugo", "001", "Banco de Dados", "04-02-2021 14:22:17");
        AlimentaBD("Carlos", "002", "Matemática", "13-02-2021 11:00:04");
        AlimentaBD("Paulo", "003", "Física", "14-02-2021 9:31:05");
        AlimentaBD("Pedro", "004", "Química", "14-02-2021 9:31:05");
        AlimentaBD("Ana", "005", "História", "14-02-2021 9:31:05");

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
                    exibirEmprestimosAluno();
                    break;
                case 3:
                    exibirEmprestimos();
                    break;
            }

        } while (menu != 0);

    }

}
