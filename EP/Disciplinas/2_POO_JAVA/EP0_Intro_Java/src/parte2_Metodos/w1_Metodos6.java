package parte2_Metodos;

public class w1_Metodos6 {

    //Método para elevar um número ao quadrado
    
    static void E_de_maior (int idade) {
        if (idade >= 18) {
            System.out.println(idade + " anos É maior de idade");
        } else {
            System.out.println(idade + " anos É menor de idade");
        }
    }
    
    public static void main(String[] args) {
        
        E_de_maior(30);
        E_de_maior(14);
        E_de_maior(18);
    }
}
