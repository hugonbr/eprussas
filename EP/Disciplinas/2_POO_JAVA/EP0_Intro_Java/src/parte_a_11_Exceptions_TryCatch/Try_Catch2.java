package parte_a_11_Exceptions_TryCatch;

public class Try_Catch2 {

    public static void main(String[] args) {
        int i = 0;
        if (i == 0) {
            throw new Error("Erro, divisão por 0");
            //System.out.println("Erro, divisão por 0");
        } else {
            System.out.println(2 / i);
        }
    }
}
