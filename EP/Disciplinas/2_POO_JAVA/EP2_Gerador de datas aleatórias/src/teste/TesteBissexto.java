/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import java.util.Random;

/**
 *
 * @author Hugo Nathan
 */
public class TesteBissexto {
    
    public static void main (String args[]) {
        
        int dia,mes = 2,ano = 2009;
        
        Random geraAle = new Random();        
        
        if (ano % 4 != 0) {
                
                // Não é bissexto
            
                System.out.println("N BI");
            }
            
            else {
            
                if (ano % 100 != 0) {
                    
                    System.out.println("É BI");
                }
                
                else {
                    
                    if (ano % 400 == 0) {
                        
                        System.out.println("É BI");
                    }
                }
            }
    }
}
