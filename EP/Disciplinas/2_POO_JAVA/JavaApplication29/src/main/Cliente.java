package main;

class Cliente{
  String nome;
  String cpf;
  
  Cliente(String nome, String cpf){
    this.nome = nome;
    this.cpf = cpf;
  }
  
  public String getNome(){
    return nome;
  }
  
  public String getCpf(){
    return cpf;
  }
}