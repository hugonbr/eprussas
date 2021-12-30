/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
//import org.kohsuke.rngom.digested.Main;

/**
 *
 * @author Antonio
 */
public class Aplicacao {
    
    private Map<Integer,Cliente> clientes = new HashMap<Integer,Cliente>();
    private static Integer idCliente = 0;
    private Map<Integer,Produto> produtos = new HashMap<Integer,Produto>();
    private Map<Integer,Pedido> pedidos = new HashMap<Integer,Pedido>();
    private static Integer idPedido = 0;
    private static Integer idProduto = 0;    
    private static Aplicacao instancia;
    
    private Aplicacao() {
        
    }
    public static Aplicacao instancia() {
        
        if(instancia == null) {
            
            instancia = new Aplicacao();
        }
        
        return instancia;
    }
    public void addCliente(Cliente cliente) {
        if(cliente.getId() == null) {
            cliente.setId(++idCliente);
        }
        this.clientes.put(cliente.getId(),cliente);
    }

    public void addPedido(Pedido pedido) {
        if(pedido.getId() == null) {
            pedido.setId(++idPedido);
        }
        this.pedidos.put(pedido.getId(),pedido);
    }

    public Collection<Cliente> getClientes() {
        
        return this.clientes.values();
    }
    
    public Cliente localizarCliente(Integer id) {
        
        return this.clientes.get(id);
    }
    
    public void removerCliente(Integer id) {
        
        this.clientes.remove(id);
    }

    public void addProduto(Produto produto) {
        if(produto.getId() == null) {
            produto.setId(++idProduto);
        }
        this.produtos.put(produto.getId(),produto);
    }
    
    public Collection<Produto> getProdutos() {
        
        return this.produtos.values();
    }
    
    public Produto localizarProduto(Integer id) {
        
        return this.produtos.get(id);
    }
    
    public void removerProduto(Integer id) {
        
        this.produtos.remove(id);
    }
    
   public void removerPedido(Integer id) {
        
        this.pedidos.remove(id);
    }    
 
      public Pedido localizarPedido(Integer id) {
        
        return this.pedidos.get(id);
    }
      
    public Collection<Pedido> getPedidos() {
        
        return this.pedidos.values();
    }
    public static void main(String args[]) {
        
        Cliente c = new Cliente();
        c.setNome("Hugo");
        Cliente c1 = new Cliente();
        c1.setNome("Nathan");
        Aplicacao.instancia().addCliente(c);
        Aplicacao.instancia().addCliente(c1);
        Aplicacao.instancia().addCliente(c);
        
        Iterator<Cliente> it = Aplicacao.instancia().getClientes().iterator();
        
        while(it.hasNext()) {
            
            Cliente c2 = it.next();
            
            System.out.println(c2.getNome());
        }
        
        
    }
}
