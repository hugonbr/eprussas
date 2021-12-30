package parte1_introAoJava;
public class A2_w4_ifElse2 {

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
