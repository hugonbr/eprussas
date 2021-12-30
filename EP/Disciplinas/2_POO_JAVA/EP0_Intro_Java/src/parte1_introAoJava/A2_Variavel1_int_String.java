package parte1_introAoJava;
public class A2_Variavel1_int_String {        
    public static void main (String[] args) {
    
        //Variáveis - Atributos
        //palavras reservadas
        int ano_nasc=1993;
        //ano_nasc.
        //String é uma classe
        String nome="hUgO nAthAn";
        String nome_c=nome.toUpperCase();
        //System.out.println(nome_c.equals("Hugo Nathan".toUpperCase()));
        //Concatenar é a operação de juntar valores no println.
        System.out.println("Nome: " + nome.toLowerCase() + "\n" + "Quantidade de Caracteres: " + nome.length());
        System.out.println("Nome em caixa alta: " + nome.toUpperCase());
    
        /*
        resumo do algoritmo
        String - É o tipo de dado utilizado para armazenar um conjunto de caracteres
        String é uma Classe que permite ao programador acessar vários métodos já prontos
        Ex:toLowerCase(), toUpperCase(), length()
        */
    }
}
