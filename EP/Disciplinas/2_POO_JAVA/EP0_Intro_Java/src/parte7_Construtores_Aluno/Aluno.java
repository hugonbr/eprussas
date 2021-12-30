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
public class Aluno {
    
    private String nomeCompleto;
    private int matricula;
    private int idade;
    
    Aluno (String nomeCompleto, int matricula, int idade) {
        this.nomeCompleto=nomeCompleto;
        this.matricula=matricula;
        this.idade=idade;        
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
    
    
}
