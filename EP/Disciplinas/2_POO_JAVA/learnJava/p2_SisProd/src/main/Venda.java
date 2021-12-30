package main;

public class Venda {

    private final Cliente cliente;
    private final Produto produto;
    private final String data_hora;
    private final int id;

    public Venda(int id, Cliente cliente, Produto produto, String data_hora) {
        this.id = id;
        this.cliente = cliente;
        this.produto = produto;
        this.data_hora = data_hora;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public Produto getProduto() {
        return produto;
    }

    public String getData_hora() {
        return data_hora;
    }

    public int getId() {
        return id;
    }

}
