package parte_a_11_Exceptions_TryCatch;
public class Try_Catch {
    public static void main(String[] args) {
        int i = 1;
        try {
            System.out.println(i/0);
        } catch (Exception e) {
            if (e.toString().equals("java.lang.ArithmeticException: / by zero")) {
                System.out.println("Não foi possível dividir o número por zero.");
            } else {
                System.out.println(e.toString());
            }
        } finally {
            System.out.println("Fim do try catch");
        }
        
        
    }
}
