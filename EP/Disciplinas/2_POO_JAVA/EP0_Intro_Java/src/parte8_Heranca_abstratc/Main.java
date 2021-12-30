/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte8_Heranca_abstratc;

/**
 *
 * @author hugo-nathan
 */
public class Main {

    public static void main(String[] args) {
        //meuCarro ("Honda", "Civic")
        Carro meuCarro = new Carro();
        System.out.print(meuCarro.getFabricante() + " ");
        System.out.println(meuCarro.getModelo());
        meuCarro.ligarMotor();
        //Veiculo meuVeiculo = new Veiculo();
    }
}

