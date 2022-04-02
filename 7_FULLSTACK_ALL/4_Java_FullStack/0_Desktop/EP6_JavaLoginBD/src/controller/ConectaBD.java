/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Hugo Nathan
 */
public class ConectaBD {

    public static Statement stm; //Envio
    public static ResultSet rs; //Resposta
    public static String driver = "java.sql.Driver";
    public static String caminho = "jdbc:mysql://localhost:3306/epusuarios?useSSL=false";
    public static String usuario = "root";
    public static String senha = "1234";
    public static Connection con;

    public static PreparedStatement pSql = null;
    public static ResultSet rSql = null;
    
    public static PreparedStatement listaSelect = null;
    public static ResultSet rsListaSelect = null;

    public static void conectar() {

        try {

            System.setProperty("jdbc.Drivers", driver);
            con = DriverManager.getConnection(caminho, usuario, senha);
            System.out.println("\nBanco de dados Conectado\n");

        } catch (SQLException ex) {

            System.out.println("Erro ao conectar com o Banco de dados");
            JOptionPane.showMessageDialog(null, "Erro ao conectar com o Banco de dados\nVerifique a sua conexão com o Servidor");
        }
    }

    public ResultSet getInformation(String sql) throws ClassNotFoundException, SQLException {

        System.out.println(sql);
        //conexão com o banco
        Class.forName(driver);
        con = DriverManager.getConnection(caminho, usuario, senha);
        System.out.println("getInformation realizado com sucesso.");
        stm = con.createStatement();

        // Definido o Statement, executamos a query no banco de dados  
        rs = stm.executeQuery(sql);

        //Fecha a conexão
        con.close();
        return rs;
    }

    public void setInformation(String sql) {
        try {

            try {
                Class.forName(driver);
                con = DriverManager.getConnection(caminho, usuario, senha);
                System.out.println("setInformation realizado com sucesso.");
                stm = con.createStatement();
                stm = con.createStatement();

                stm.executeUpdate(sql);

                //Fecha a conexão com o banco de dados
                con.close();

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
