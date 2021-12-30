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
//Classes abstratas não podem ser diretamente instanciadas, apenas por herança

public abstract class Veiculo {
    
    private String fabricante = "Honda";
    public void ligarMotor () {
        System.out.println("Vruum Vruum!!!");
    }

    public String getFabricante() {
        return fabricante;
    }
}
