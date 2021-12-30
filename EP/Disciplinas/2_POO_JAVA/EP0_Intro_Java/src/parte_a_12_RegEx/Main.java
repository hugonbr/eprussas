package parte_a_12_RegEx;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    public static void main(String[] args) {
        Pattern pattern = Pattern.compile("w3schools", Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher("Visite o W3Schools!");
        boolean matchFound = matcher.find();
        if (matchFound) {
            System.out.println("Deu Match");
        } else {
            System.out.println("Não deu Match");
        }
    }
}
