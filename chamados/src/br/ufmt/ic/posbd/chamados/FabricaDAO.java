/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.ufmt.ic.posbd.chamados;





import br.ufmt.ic.posbd.chamados.dao.CidadeDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.CidadeDAOImpl;

/**
 *
 * @author edy
 */
public class FabricaDAO {
    
        public static CidadeDAO criarCidadeDAO(){
        return new CidadeDAOImpl();
    }

    
}
