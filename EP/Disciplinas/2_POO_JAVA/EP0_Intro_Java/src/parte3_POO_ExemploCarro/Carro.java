package parte3_POO_ExemploCarro;
public class Carro {

    private String nome;
    private String cor;
    private int ano;
    private double motor;
    
    Carro(String nome, int ano, String cor, double motor) {
        this.nome=nome;
        this.ano=ano;
        this.cor=cor;
        this.motor=motor;
    }

    public String getNome() {
        return nome;
    }

    public String getCor() {
        return cor;
    }

    public int getAno() {
        return ano;
    }

    public double getMotor() {
        return motor;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public void setMotor(double motor) {
        this.motor = motor;
    }
    
}
