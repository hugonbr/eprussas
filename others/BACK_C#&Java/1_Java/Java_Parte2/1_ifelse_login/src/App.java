public class App {
    public static void main(String[] args) {
        boolean dadologin = true;
        boolean dadosenha = true;

        if (dadologin && dadosenha) {
            System.out.println("Bem-vindo");
        } else {
            System.out.println("Dados errados, tente novamente");
        }
    }
}
