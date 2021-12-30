/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacao;

/**
 *
 * @author Antonio
 */
public class Produto {
    private String nome;
    private Integer id;

    public String getNome() {
        if(this.nome == null) {
            
            return "";
        }
        return nome;
    }

    public Integer getId() {
        return id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
}
