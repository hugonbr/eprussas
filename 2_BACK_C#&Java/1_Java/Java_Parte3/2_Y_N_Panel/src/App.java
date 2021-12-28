import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class App {
    public static void main(String[] args) {

        // Cria um JFrame
        JFrame frame = new JFrame("Principal");
        // Cria o JOptionPane por showMessageDialog
        int resposta = JOptionPane.showConfirmDialog(frame, "Deseja prosseguir?", "Opções", JOptionPane.YES_NO_OPTION);
        // verfica se a resposta é verdadeira
        if (resposta == JOptionPane.YES_OPTION) {
            JOptionPane.showMessageDialog(null, "Bem-vindo");
        } else {
            JOptionPane.showMessageDialog(null, "Bye!");
        }
        System.exit(0);
    }
}
