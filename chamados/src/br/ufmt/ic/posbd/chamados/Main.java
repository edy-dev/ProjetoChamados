/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados;

import br.ufmt.ic.posbd.chamados.gui.PrincipalJFrame;
import javax.swing.JFrame;

/**
 *
 * @author edy
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ///Carrega Tela Princial
        Main.CarregarTelaPrincipal(true);
    }
    //Metodos Carrega Tela
    private static void CarregarTelaPrincipal(Boolean Tipo)
    {
         PrincipalJFrame TelaPrincipal = new PrincipalJFrame();
        if (Tipo) {
            //Centralizar
            TelaPrincipal.setLocationRelativeTo(null);
            //Maximizar
            TelaPrincipal.setExtendedState(PrincipalJFrame.MAXIMIZED_BOTH);
            //Mostar SHOW
            TelaPrincipal.setVisible(true);
        } else {
            TelaPrincipal.setVisible(false);
        }
    }; 
};
