package parte3_POO;

public class w1_POO {

//    POO - Programação Orientada a objetos
//    Classes: São um molde, um 'template' para os objetos.
//    Objetos: São instâncias de uma classe.
//    Atributos: São as variáveis de uma classe/objeto.
//    Métodos: São as funções de uma classe/objeto.
//    OBS: Java sempre usa OO.
    
    int x=5; // é um atributo da classe w1_POO
    
    public static void main(String[] args) {
        
        //meuObj é um objeto instanciado pela classe w1_POO
        w1_POO meuObj = new w1_POO();
        System.out.println(meuObj.x);
        
        //Carro fusca = new Carro("azul");
        //fusca.cor -> azul
        
    }
}
