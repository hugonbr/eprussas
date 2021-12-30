package parte2_Metodos;

public class w1_Metodos3 {

    //Métodos são trechos de códigos que só executam quando são chamados
    
    
    static void ola(String nome, int idade) {
        System.out.println("Olá " + nome + ", sua idade é " + idade);
    }
    
    //Métodos são trechos de códigos que só executam quando são chamados
    public static void main(String[] args) {

        ola("Hugo", 28);
        ola("João", 45);
        ola("Maria", 17);
        ola("Pedro", 27);
        ola("Ana", 32);
    }

}
