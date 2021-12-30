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
public class Main {
    
    public static void main(String[] args) {
        Carro gol = new Carro("Gol", "VW", 2015);
        System.out.println(gol.getFabricante());
        System.out.println("Ligando o Gol: " + gol.ligarMotor());
        Moto broz = new Moto("Broz", "Honda", 2010);
        System.out.println(broz.getFabricante());
        System.out.println("Ligando a Broz: " + broz.ligarMotor());
        Aviao boeing = new Aviao("Boeing 737", "AirLines", 2016);
        System.out.println(boeing.getFabricante());
        System.out.println("Ligando o Boeing: " + boeing.ligarMotor());
    }
}
