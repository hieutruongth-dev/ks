/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

/**
 *
 * @author LGNV
 */
public class main {
    public static frm_Login frm_Login;
    public static frm_WelCome welcome = new frm_WelCome();
    public static frmHome home;
    
    public static void main(String[] args) throws InterruptedException {
        chooseLookAndFeel();
        
        
        welcome.setVisible(true);
        
        for (int i = 0; i < 100; i++) {
            Thread.sleep(10);
            
            welcome.lblValueLoad.setText(i+"%");
            welcome.prgValue.setValue(i);
            switch (i){
                case 1 : {
                    welcome.lblContenLoad.setText("Start...");
                    break;
                }
                case 30 : {
                    frm_Login = new frm_Login();
                    welcome.lblContenLoad.setText("Create Login...");
                    break;
                }
                case 40 : {
                    home = new frmHome();
                }
                case 99 :{
                    welcome.lblContenLoad.setText("Succes..");
                    welcome.dispose();
                    frm_Login.setVisible(true);
                    break;
                }
            }
        }
    }
    
    public static void chooseLookAndFeel(){
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Widows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(frm_WelCome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frm_WelCome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frm_WelCome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frm_WelCome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
    }
}
