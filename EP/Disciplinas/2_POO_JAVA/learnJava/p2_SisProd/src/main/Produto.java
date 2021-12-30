package main;

public class Produto {

    private final String nome;
    private final double preco;

    public Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getTitulo() {
        return nome;
    }
    
    public double getPreco() {
        return preco;
    }

}
