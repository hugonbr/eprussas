package parte1_introAoJava;
import javax.swing.JOptionPane;
public class B11_EntradaeSaidaGraf {
    public static void main (String[] args) {
        
        String nome;
        Integer idade;
        Double nota;
        nome = JOptionPane.showInputDialog("Digite o seu nome");
        idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a sua idade"));
        nota = Double.parseDouble(JOptionPane.showInputDialog("Digite a sua nota"));
        JOptionPane.showMessageDialog(null, "Nome: " + nome + ". Idade:" + idade + ". Nota:" + nota + ".");
        System.exit(0);
    }
}
