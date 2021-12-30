/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author hugo-nathan
 */
public class Emprestimo {

    Aluno aluno; //(nome, matricula)
    Livro livro; //(titulo)
    String data_hora; //14-02-2021 9:31:05
    int id;

    public Emprestimo(int id, Aluno aluno, Livro livro, String data_hora) {
        this.id = id;
        this.aluno = aluno;
        this.livro = livro;
        this.data_hora = data_hora;
    }

    public Aluno getAluno() {
        return aluno;
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
