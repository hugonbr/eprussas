package parte1_introAoJava;
public class A6_BaladaInfo {
    public static void main(String[] args) {
        int idade = 15;
        boolean amigoDoDono = true;
        System.out.println("Balada Info\n");
        //if (idade < 18 && amigoDoDono == false) {
            if (idade >= 18 || amigoDoDono){
            System.out.println("Pode entrar");
        } else {
            System.out.println("Não pode entrar");
        }
    }
}

//int idade = 19;
//boolean amigoDoDono = true;
