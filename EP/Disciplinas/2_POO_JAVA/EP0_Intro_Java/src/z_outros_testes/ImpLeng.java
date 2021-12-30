package z_outros_testes;

public class ImpLeng {

    public static int tamanho (String txt) {
        char[] letra = txt.toCharArray();
        int i=0;
        for (char l : letra) {
            i++;
        }
        return i;
    }
    
    public static void main(String[] args) {
        String txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        System.out.println(tamanho(txt));
    }
}
