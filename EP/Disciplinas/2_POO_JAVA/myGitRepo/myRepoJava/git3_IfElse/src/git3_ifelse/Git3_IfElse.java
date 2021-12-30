/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package git3_ifelse;

/**
 *
 * @author hugo-nathan
 */
public class Git3_IfElse {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        boolean dadologin = true;
        boolean dadosenha = true;
        
        if (dadologin && dadosenha) {
            System.out.println("Bem-vindo");
        } else {
            System.out.println("Dados errados, tente novamente");
        }
    }
    
}
