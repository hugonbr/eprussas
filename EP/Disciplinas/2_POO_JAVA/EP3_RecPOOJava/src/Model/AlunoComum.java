/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Hugo
 */
public class AlunoComum {

    private String nome;
    private int idade, matricula;
    private double notaPT, notaMAT, media;

    AlunoComum(String nome, int matricula, int idade) {
        this.nome = nome;
        this.matricula = matricula;
        this.idade = idade;
    }

    public double calculaMedia() {
        media = (notaPT + notaMAT) / 2;
        return media;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public double getNotaPT() {
        return notaPT;
    }

    public void setNotaPT(double notaPT) {
        this.notaPT = notaPT;
    }

    public double getNotaMAT() {
        return notaMAT;
    }

    public void setNotaMAT(double notaMAT) {
        this.notaMAT = notaMAT;
    }

    public double getMedia() {
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }

}
