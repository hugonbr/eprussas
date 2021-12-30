package parte3_POO_AulaClasseCarro;

public class Carro {
    
    //atributos de um carro
    private String nome;
    private int ano;
    private String cor;
    private float motor;
    
    Carro(String nome, int ano, String cor, float motor) {
        this.nome=nome;
        this.ano=ano;
        this.cor=cor;
        this.motor=motor;
    }
    
    public void ligarMotor () {
        
        System.out.println("Vrum Vrum!!!");
    }
    
    //Atalho alt+insert

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public float getMotor() {
        return motor;
    }

    public void setMotor(float motor) {
        this.motor = motor;
    }
    
}
