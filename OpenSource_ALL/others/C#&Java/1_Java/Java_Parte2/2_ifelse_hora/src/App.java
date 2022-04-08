public class App {
    public static void main(String[] args) {
        int horas = 12; // 00:00 até 23:59
        if (horas < 12) { //
            System.out.println("Bom dia.");
        } else if (horas < 18) {// implicito que horas é >=12
            System.out.println("Boa tarde.");
        } else {
            System.out.println("Boa noite.");
        }
    }
}
