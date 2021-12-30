package main;

import java.util.Scanner;
import java.util.ArrayList;

class Main{
  
//  Venda venda = new Venda(id, Cliente, Livro);
//  Cliente cliente = new Cliente(nome, cpf);
//  Livro livro = new Livro(titulo, preco);

  static ArrayList<Venda> vendasdaloja = new ArrayList<Venda>();
  static int id = 1;
  
  public static void inserirVenda(){
    Scanner input = new Scanner(System.in);
    System.out.println("Digite O Nome Do Cliente: ");
    String nome_cliente = input.nextLine();
    System.out.println("Digite O CPF Do Cliente: ");
    String cpf_cliente = input.nextLine();
    Cliente cliente = new Cliente(nome_cliente, cpf_cliente);
    System.out.println("Digite O Título Do Livro Comprado: ");
    String titulo_livro = input.nextLine();
    System.out.println("Digite O Preço Do Livro: ");
    float preco_livro = input.nextFloat();
    Livro livro = new Livro(titulo_livro, preco_livro);
    Venda venda = new Venda(id, cliente, livro);
    vendasdaloja.add(venda);
    id++;
  }
  
  public static void mostrarCatalogo(ArrayList<String> catalogo){
    System.out.println("===== CATÁLOGO DE LIVROS ===== ");
    for (int i = 0; i < catalogo.size(); i++){
      System.out.println(catalogo.get(i));
    }
    System.out.println("==============================");;
  }
  
  public static void main(String[] args){      
    
    Scanner input = new Scanner(System.in);
    ArrayList<String> catdelivros = new ArrayList<String>();
    catdelivros.add("Harry Potter E A Pedra Filosofal");
    catdelivros.add("Harry Potter E A Câmara Secreta");
    catdelivros.add("Harry Potter E O Prisioneiro De Azkaban");
    catdelivros.add("Harry Potter E O Cálice De Fogo");
    catdelivros.add("Harry Potter E A Ordem Da Fênix");
    catdelivros.add("Harry Potter E O Enigma Do Príncipe");
    catdelivros.add("Harry Potter E As Relíquias Da Morte: Parte 1");
    catdelivros.add("Harry Potter E As Relíquias Da Morte: Parte 2");
    catdelivros.add("O Ladrão De Raios");
    catdelivros.add("O Mar De Monstros");
    catdelivros.add("A Maldição Do Titã");
    catdelivros.add("A Batalha Do Labirinto");
    catdelivros.add("O Último Olimpiano");
    ArrayList<String> menu = new ArrayList<String>();
    menu.add("Catálogo De Livros");
    menu.add("Inserir Uma Compra");
    menu.add("Livros Vendidos");
    menu.add("Sair Do Sistema");
    int resp;
    do{
      for (int i = 0; i < menu.size(); i++){
        System.out.println(i + " - " + menu.get(i));
      }
      System.out.println("Opção: ");
      resp = input.nextInt();
      if (resp == 0){
        mostrarCatalogo(catdelivros);
      } else if (resp == 1){
        inserirVenda();
      }
    } while (resp != 3);
  }
}