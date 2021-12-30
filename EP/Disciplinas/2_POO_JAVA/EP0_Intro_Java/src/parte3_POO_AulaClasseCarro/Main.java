package parte3_POO_AulaClasseCarro;

public class Main {

    public static void main(String[] args) {
        Carro palio = new Carro("Palio", 2015, "prata", 1.0f);
        Carro gol = new Carro("Gol", 2014, "branco", 1.4f);

        System.out.println("----- Dados dos Carros -----");
        System.out.print("Nome: " + palio.getNome() + "; ");
        System.out.print("Ano: " + palio.getAno() + "; ");
        System.out.print("Cor: " + palio.getCor() + "; ");
        System.out.println("Motor: " + palio.getMotor() + ";");
        palio.ligarMotor();
        gol.ligarMotor();
    }
}
