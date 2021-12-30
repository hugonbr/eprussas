package parte3_POO_ExemploCarro;

public class Main {

    public static void main(String[] args) {
        Carro fusca = new Carro("Fusca", 1977, "azul", 1.6);
        System.out.println("----- Dados dos Carros -----");
        System.out.print("Nome: "+fusca.getNome()+"; ");
        System.out.print("Ano: "+fusca.getAno()+"; ");
        System.out.print("Cor: "+fusca.getCor()+"; ");
        System.out.println("Motor: "+fusca.getMotor()+";");
        Carro opala = new Carro("Opala", 2000, "preto", 1.4);
        System.out.print("Nome: "+opala.getNome()+"; ");
        System.out.print("Ano: "+opala.getAno()+"; ");
        System.out.print("Cor: "+opala.getCor()+"; ");
        System.out.println("Motor: "+opala.getMotor()+";");
    }
}
