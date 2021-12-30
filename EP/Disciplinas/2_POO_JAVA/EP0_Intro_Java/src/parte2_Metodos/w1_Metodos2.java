package parte2_Metodos;

public class w1_Metodos2 {

    static void ola(String nome) {
        System.out.println("Olá " + nome + ", bem-vindo ao Java.");
    }
    
    //Métodos são trechos de códigos que só executam quando são chamados
    public static void main(String[] args) {

        ola("Hugo");
        ola("João");
        ola("Maria");
    }
}
