/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import java.util.Scanner;

/**
 *
 * @author hugo-nathan
 */
public class Main {
    public static void main(String[] args) {
        /*
        
        Título: Sistema para gerenciamento de emprestimos
        de armas de local de treino de tiro.
        
        Classes: 
        1) Empréstimos (Arma, Cliente, data_hora, valor);
        2) Arma (nome, calibre, ...)
        3) Cliente (nome, cpf, num_porte_arma)
        
        métodos: (O que o usuário vai fazer nesse sistema?)
        
        1) Inserir emprestimos
        2) Exibir TODOS os emprestimos
        3) Exibir o emprestimo de um cliente
        
        */
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
                    //inserirEmprestimo();
                    break;
                case 2:
                    //ExibirEmprestimosAluno();
                    break;
                case 3:
                    //ExibirEmprestimos();
                    break;
            }

        } while (menu != 0);

    }
}
