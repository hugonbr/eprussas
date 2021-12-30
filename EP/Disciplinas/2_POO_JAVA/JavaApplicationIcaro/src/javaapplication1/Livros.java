// Sem importÃ¢ncia (?)
package javaapplication1;

// Classe livros
public class Livros {
    
    // Atributos
    private String nome;
    private int ano;
    private float preço;
    private String autor;
    
    // Livros com os atributos
    Livros (String nome, int ano, float preço, String autor) {
        
        // This atributos
        this.nome = nome;
        this.ano = ano;
        this.preço = preço;
        this.autor = autor;
        
    }

    // Getter getNome
    public String getNome() {
        return nome;
    }

    // Getter getAno
    public int getAno() {
        return ano;
    }

    // Getter getPreÃ§o
    public float getPreço() {
        return preço;
    }

    // Getter getAutor
    public String getAutor() {
        return autor;
    }

    // Setter setNome
    public void setNome(String nome) {
        this.nome = nome;
    }

    // Setter setAno
    public void setAno(int ano) {
        this.ano = ano;
    }

    // Setter setPreÃ§o
    public void setPreço(float preço) {
        this.preço = preço;
    }

    // Setter setAutor
    public void setAutor(String autor) {
        this.autor = autor;
    }

}