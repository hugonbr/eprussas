/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Hugo
 */
public class Main {

    public static void main(String[] args) {

        AlunoComum joao = new AlunoComum("João Paulo", 12, 17);
        System.out.println("Nome: " + joao.getNome() + " | Matricula: " + joao.getMatricula());

        joao.setNotaPT(9.1);
        joao.setNotaMAT(7.8);

        System.out.println("Média: " + joao.calculaMedia());

        //--------------------------------------------------
        AlunoEEEP pedro = new AlunoEEEP("Pedro Henri", 22, 16);

        System.out.println("Nome: " + pedro.getNome() + " | Matricula: " + pedro.getMatricula());

        pedro.setNotaPT(6.5);
        pedro.setNotaMAT(7.8);
        pedro.setNotaPOO(9.8);
        pedro.setNotaBD(8.7);

        System.out.println("Média: " + pedro.calculaMedia() + " | MédiaTEC: " + pedro.calculaMediaTec());
    }

}
