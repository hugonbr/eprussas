package parte1_introAoJava;

public class Gdrive_Exemplo_FOR_WHILE {

    //Exiba no terminal todos os números inteiros
    //no intervalo de 0 a 10.
    //ou
    //O Alfabeto de A a Z
    public static void main(String[] args) {

        //for
        for (char i = 65; i < 91; i++) {
            System.out.print(i + "; ");
        }
        System.out.println("");
        
        //while
        char i = 65;
        while (i < 91) {
            System.out.print(i + "; ");
            i++;
        }
        System.out.println("");
        
        //do while
        char c = 65;
        do {
            System.out.print(c + "; ");
            c++;
        } while (c < 91);
        System.out.println("");

    }
}
