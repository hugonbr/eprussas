package main;

class Venda{
  Cliente cliente;
  Livro livro;
  int id;
  
  Venda(int id, Cliente cliente, Livro livro){
    this.id = id;
    this.cliente = cliente;
    this.livro = livro;
  }
  
  public int getId(){
    return id;
  }
  
  public Cliente getCliente(){
    return cliente;
  }
  
  public Livro getLivro(){
    return livro;
  }
}