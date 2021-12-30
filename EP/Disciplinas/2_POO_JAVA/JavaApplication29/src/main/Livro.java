package main;

class Livro{
  String titulo;
  float preco;
  
  Livro(String titulo, float preco){
    this.titulo = titulo;
    this.preco = preco;
  }
  
  public String getTitulo(){
    return titulo;
  }
  
  public float getPreco(){
    return preco;
  }
}