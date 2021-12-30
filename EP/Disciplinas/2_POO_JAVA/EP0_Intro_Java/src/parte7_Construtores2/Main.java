package parte7_Construtores2;

public class Main {

    public static void main(String[] args) {
        Aluno joao = new Aluno("João Silva", 18);

        System.out.println("Nome: " + joao.getNome());
        //joao.nome="teste";
        System.out.println("Idade: " + joao.getIdade());
        
    }
}
