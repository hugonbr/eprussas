package parte2_Metodos;

public class w1_Metodos5 {

    //Método para analisar se é maior de idade
    static boolean E_de_maior(int idade /*18*/) {
        return (idade >= 18) ? true : false;
    }

    public static void main(String[] args) {

        System.out.println(E_de_maior(30));
        System.out.println(E_de_maior(14));
        System.out.println(E_de_maior(18));
    }
}
