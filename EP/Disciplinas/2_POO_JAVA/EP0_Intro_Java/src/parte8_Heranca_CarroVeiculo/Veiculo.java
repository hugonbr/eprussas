/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte8_Heranca_CarroVeiculo;

/**
 *
 * @author hugo-nathan
 */
public abstract class Veiculo {
    protected String fabricante;

    public String getFabricante() {
        return fabricante;
    }
    
    public String ligarMotor () {
        return "Vruum Vruum!!!";
    }
}
