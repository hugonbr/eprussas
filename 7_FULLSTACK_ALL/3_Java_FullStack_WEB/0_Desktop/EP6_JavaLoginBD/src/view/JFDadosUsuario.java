/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.swing.JOptionPane;
import libs.BCrypt;

/**
 *
 * @author Hugo Nathan
 */
public class JFDadosUsuario extends javax.swing.JFrame {

    /**
     * Creates new form Principal
     */
    
    //Variavel que diz se está no modo insert(1) ou update(2)
    int modo;
    String login;
    
    public JFDadosUsuario(String login, String nome, String email, int modo) {
        initComponents();
        jTextFieldNome.setText(nome);
        jTextFieldLogin.setText(login);
        this.login=login;
        jTextFieldEmail.setText(email);
        this.modo=modo;
    }

    private JFDadosUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String adicionaCriptografado(String senha) {

    // Gera um sal aleatório
    String salGerado = BCrypt.gensalt();
    //System.out.println("O sal gerado foi $" + salGerado + "$");
    
    // Gera a senha hasheada utilizando o sal gerado
    String senhaHasheada = BCrypt.hashpw(senha, salGerado);
    
    return senhaHasheada;
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldNome = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldEmail = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldLogin = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jPasswordFieldNovaSenha = new javax.swing.JPasswordField();
        jLabel6 = new javax.swing.JLabel();
        jPasswordFieldConfirmeSenha = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel1.setText("Dados do Usuário");

        jLabel2.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel2.setText("Nome: ");

        jTextFieldNome.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N

        jLabel3.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel3.setText("email: ");

        jTextFieldEmail.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N

        jLabel4.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel4.setText("login: ");

        jTextFieldLogin.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jTextFieldLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldLoginActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jButton1.setText("Voltar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jButton2.setText("Salvar Alterações");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel5.setText("Sua Senha: ");

        jPasswordFieldNovaSenha.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jPasswordFieldNovaSenha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordFieldNovaSenhaActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N
        jLabel6.setText("Confirme a sua Senha: ");

        jPasswordFieldConfirmeSenha.setFont(new java.awt.Font("Cantarell", 0, 24)); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator1)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 240, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 184, Short.MAX_VALUE)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel6)
                                        .addComponent(jLabel5))
                                    .addGap(18, 18, 18)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(jPasswordFieldConfirmeSenha, javax.swing.GroupLayout.DEFAULT_SIZE, 294, Short.MAX_VALUE)
                                        .addComponent(jPasswordFieldNovaSenha)))
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel2)
                                        .addComponent(jLabel3)
                                        .addComponent(jLabel4))
                                    .addGap(18, 18, 18)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(jTextFieldLogin, javax.swing.GroupLayout.DEFAULT_SIZE, 454, Short.MAX_VALUE)
                                        .addComponent(jTextFieldEmail)
                                        .addComponent(jTextFieldNome))))
                            .addGap(0, 0, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jTextFieldNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jTextFieldEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jTextFieldLogin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jPasswordFieldNovaSenha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jPasswordFieldConfirmeSenha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 42, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldLoginActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldLoginActionPerformed

    private void jPasswordFieldNovaSenhaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordFieldNovaSenhaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordFieldNovaSenhaActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:

        if (jTextFieldLogin.getText().equals("") || jTextFieldNome.getText().equals("")) {
        
            JOptionPane.showMessageDialog(null, "Verifique se TODOS os campos estão preenchidos corretamente.");
        }else if (jPasswordFieldConfirmeSenha.getText().equals("")) {
        
            JOptionPane.showMessageDialog(null, "Digite a sua senha para salvar as informações!");
        }else if (jPasswordFieldNovaSenha.getText().equals(jPasswordFieldConfirmeSenha.getText()) == false) {
        
            JOptionPane.showMessageDialog(null, "As senhas não são iguais");
        } else {
            
            
            //modo insert
            if (modo==1) {
                try {

                    String sql = ("INSERT INTO usuario (login,nome,email,senha) values ('" + jTextFieldLogin.getText() + "','" + jTextFieldNome.getText() + "','" + jTextFieldEmail.getText() + "','" + adicionaCriptografado(jPasswordFieldConfirmeSenha.getText()) + "');");
                    //System.out.println(sql);

                    controller.ConectaBD.pSql = controller.ConectaBD.con.prepareStatement(sql);

                    controller.ConectaBD.pSql.execute();

                    System.out.println("Dados inseridos");

                    JOptionPane.showMessageDialog(null, "Dados inseridos com sucesso!");
                    
                    
                    JFLogin login = new JFLogin();
                    login.setVisible(true);
                    this.dispose();
                } catch (Exception e) {

                    System.out.println(e);
                    if (e.toString().equals("com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '"+jTextFieldLogin.getText()+"' for key 'PRIMARY'")) {
                        JOptionPane.showMessageDialog(null, "ERRO! Este login já existe, tente outro nome.");
                    } else {
                        JOptionPane.showMessageDialog(null, "Verifique os dados dos campos");
                    }
                }
            }
            //modo update
            
            if (modo==2) {
            
                try {

                    String sql = ("UPDATE usuario set login ='" + jTextFieldLogin.getText() + "', nome ='" + jTextFieldNome.getText() + "', email ='" + jTextFieldEmail.getText() + "', senha='" + adicionaCriptografado(jPasswordFieldConfirmeSenha.getText()) + "' WHERE login='"+login+"';");
                    //System.out.println(sql);

                    controller.ConectaBD.pSql = controller.ConectaBD.con.prepareStatement(sql);

                    controller.ConectaBD.pSql.execute();

                    System.out.println("Dados Atualizados");

                    JOptionPane.showMessageDialog(null, "Dados Atualizados com sucesso!");
                    
                    
                    JFLogin login = new JFLogin();
                    login.setVisible(true);
                    this.dispose();
                } catch (Exception e) {

                    System.out.println(e);
                    if (e.toString().equals("com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry 'hugonbr' for key 'PRIMARY'")) {
                        JOptionPane.showMessageDialog(null, "ERRO! Este login já existe, tente outro nome.");
                    } else {
                        JOptionPane.showMessageDialog(null, "Verifique os dados dos campos");
                    }
                }
            }
        }
        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
        if (modo == 1) {
        
            JFLogin login = new JFLogin();
            login.setVisible(true);
            
        } else {
        
            JFBem_Vindo bem_vindo = new JFBem_Vindo(login);
            bem_vindo.setVisible(true);
        }
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(JFDadosUsuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(JFDadosUsuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(JFDadosUsuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(JFDadosUsuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new JFDadosUsuario().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordFieldConfirmeSenha;
    private javax.swing.JPasswordField jPasswordFieldNovaSenha;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldLogin;
    private javax.swing.JTextField jTextFieldNome;
    // End of variables declaration//GEN-END:variables
}
