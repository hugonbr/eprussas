package parte1_introAoJava;
public class q4 {

    public static void main(String[] args) {
        
        int idade = 15;
        boolean permissaoDosPais = true;
        if (idade >= 18 || permissaoDosPais) {
            System.out.println("Pode viajar");
        } else {
            System.out.println("Não pode viajar");
        }
    }
    // R: 
}


//int idade = 19;
//boolean amigoDoDono = true;

//if (idade < 18 && amigoDoDono == false) {
