package main;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {

    static int menu;
    static int id = 1;
    static Scanner in = new Scanner(System.in);

    static LocalDateTime myDateObj = LocalDateTime.now();
    static DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    static String formattedDate = myDateObj.format(myFormatObj);

    static ArrayList<Venda> vendas = new ArrayList<Venda>();

    public static void inserirVenda() {
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite o nome do cliente: ");
        String nome = insert.nextLine();
        System.out.print("Digite o cpf do cliente: ");
        String cpf = insert.nextLine();
        Cliente aluno = new Cliente(nome, cpf);
        System.out.print("Digite o nome do produto: ");
        String nomeProd = insert.nextLine();
        System.out.print("Digite o valor do produto: ");
        double preco = insert.nextDouble();
        Produto produto = new Produto(nomeProd, preco);
        Venda venda = new Venda(id, aluno, produto, formattedDate);
        vendas.add(venda);
        id++;
    }

    public static void ExibirVendas() {
        double valorTotal = 0d;
        Iterator<Venda> it = vendas.iterator();
        System.out.println("LISTA DE VENDAS");
        while (it.hasNext()) {
            Venda venda = it.next();
            System.out.print("ID: " + venda.getId());
            System.out.print("; Cliente: " + venda.getCliente().getNome());
            System.out.print("; Data/Hora: " + venda.getData_hora());
            System.out.print("; Produto: " + venda.getProduto().getTitulo());
            System.out.println("; Valor: " + venda.getProduto().getPreco());
            valorTotal += venda.getProduto().getPreco();
        }
        System.out.println("Valor total de vendas: " + valorTotal);
    }

    public static void ExibirVendasClientes() {
        double valorTotal = 0d;
        Scanner insert = new Scanner(System.in);
        System.out.print("Digite o cpf do cliente: ");
        String cpf = insert.nextLine();
        Iterator<Venda> it = vendas.iterator();
        while (it.hasNext()) {
            Venda venda = it.next();
            if (venda.getCliente().getCpf().equals(cpf)) {
                System.out.print("ID: " + venda.getId());
                System.out.print("; Cliente: " + venda.getCliente().getNome());
                System.out.print("; Data/Hora: " + venda.getData_hora());
                System.out.print("; Produto: " + venda.getProduto().getTitulo());
                System.out.println("; Valor: " + venda.getProduto().getPreco());
                valorTotal += venda.getProduto().getPreco();
                //break;
            }
        }
        System.out.println("Valor total das compras: " + valorTotal);
    }

    public static void AlimentaBD(String nome_Cliente, String cpf, String nome_produto, float preco, String data_hora) {
        Cliente cliente = new Cliente(nome_Cliente, cpf);
        Produto produto = new Produto(nome_produto, preco);
        Venda vend = new Venda(id, cliente, produto, data_hora);
        vendas.add(vend);
        id++;
    }

    public static void main(String[] args) {
        
        /*
        
        Título: Sistema para gerenciamento de vendas de um e-commerce.
        
        Classes: 
        1) Venda (Cliente, Produto, data_hora);
        Ex: ID: 1; Cliente: Hugo; Data/Hora: 23-01-2021 10:13:45; Produto: Notebook; Valor: 3500.0
        Ex: ID: 2; Cliente: Hugo; Data/Hora: 04-02-2021 14:22:17; Produto: Celular; Valor: 1200.0
        Ex: ID: 3; Cliente: Carlos; Data/Hora: 13-02-2021 11:00:04; Produto: SmatTV; Valor: 1500.0
        Ex: ID: 4; Cliente: Paulo; Data/Hora: 14-02-2021 9:31:05; Produto: Ventilador; Valor: 100.0
        Estrutura de Armazenamento: ArrayList<Emprestimo>
        
        2) Cliente (nome, cpf)
        3) Produto (nome, preço)
        
        métodos: (O que o usuário vai fazer nesse sistema?)
        
        1) 
        2) 
        3) 
        
         */
        
        AlimentaBD("Hugo", "123123123-99", "Notebook", 3500.00f, "23-01-2021 10:13:45");
        AlimentaBD("Hugo", "123123123-99", "Celular", 1200.00f, "04-02-2021 14:22:17");
        AlimentaBD("Carlos", "444555666-99", "SmatTV", 1500.00f, "13-02-2021 11:00:04");
        AlimentaBD("Paulo", "000777888-99", "Ventilador", 100.00f, "14-02-2021 9:31:05");

        do {
            System.out.println("Bem-vindo ao ProdSis");
            System.out.println("1 - Inserir uma nova venda");
            System.out.println("2 - Exibir compras de um cliente");
            System.out.println("3 - Exibir todas as vendas");
            System.out.println("0 - Sair");
            System.out.print("Entrada: ");
            menu = in.nextInt();
            try {
                Runtime.getRuntime().exec("clear");
            } catch (IOException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
            switch (menu) {
                case 0:
                    System.out.println("Bye!");
                    break;
                case 1:
                    inserirVenda();
                    break;
                case 2:
                    ExibirVendasClientes();
                    break;
                case 3:
                    ExibirVendas();
                    break;
            }

        } while (menu != 0);

    }

}
