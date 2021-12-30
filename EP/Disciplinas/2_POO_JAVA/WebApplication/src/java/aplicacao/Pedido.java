/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacao;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio
 */
public class Pedido {
    
    private Integer id;
    private List<Produto> produtos = new ArrayList<Produto>(); 
    private Cliente cliente;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public List<Produto> getProdutos() {
        return produtos;
    }

    public Cliente getCliente() {
        return cliente;
    }
    
    public void addProduto(Produto produto) {
        
        this.produtos.add(produto);
    }
}
