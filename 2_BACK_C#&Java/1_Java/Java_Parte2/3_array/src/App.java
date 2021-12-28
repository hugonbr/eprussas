public class App {
    public static void main(String[] args) {

        // Vetor(Array) de Strings
        String[] lista_de_notebooks = { "Dell", "Lenovo", "HP", "Samsung" };
        System.out.println(lista_de_notebooks[3]);
        lista_de_notebooks[3] = "Positivo";
        System.out.println(lista_de_notebooks[3]);
        System.out.println(lista_de_notebooks[1]);
        System.out.println("Tamanho do Array: " + lista_de_notebooks.length);
    }
}
