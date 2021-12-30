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
public class Moto extends Veiculo{
    String modelo;
    int ano;
    
    Moto(String modelo, String fabricante, int ano) {
        this.modelo=modelo;
        this.ano=ano;
        super.fabricante=fabricante;
    }
    
}
