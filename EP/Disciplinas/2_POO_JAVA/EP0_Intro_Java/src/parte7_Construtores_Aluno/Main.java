/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte7_Construtores_Aluno;

/**
 *
 * @author hugo-nathan
 */
public class Main {

    //joao = ("João Silva", 541325, 17)
    //maria = ("Maria Dantas", 123456, 14)
    //pedro = ("Pedro Régis", 654321, 15)
    //ana = ("Ana Fulana", 321654, 16)
    //Classe Aluno
    //POO
    //Classe
    //Objeto
    //Atributos
    //Métodos
    public static void main(String[] args) {

        Aluno joao = new Aluno("João Silva", 541325, 17);
        System.out.println(joao.getNomeCompleto());
        joao.setNomeCompleto("João das Neves");
        System.out.println(joao.getNomeCompleto());

    }
}
