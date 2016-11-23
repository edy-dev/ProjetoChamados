/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados;

import br.ufmt.ic.posbd.chamados.dao.CidadeDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.CidadeDAOImpl;

import br.ufmt.ic.posbd.chamados.dao.EmpresaDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.EmpresaDAOImpl;

import br.ufmt.ic.posbd.chamados.dao.HardwareDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.HardwareDAOImpl;

import br.ufmt.ic.posbd.chamados.dao.SolicitanteDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.SolicitanteDAOImpl;

import br.ufmt.ic.posbd.chamados.dao.RegistrosDAO;
import br.ufmt.ic.posbd.chamados.dao.jpa.RegistrosDAOImpl;

/**
 *
 * @author edy
 */
public class FabricaDAO {

    public static CidadeDAO criarCidadeDAO() {
        return new CidadeDAOImpl();
    };

    public static EmpresaDAO criarEmpresaDAO() {
        return new EmpresaDAOImpl();
    };
    public static HardwareDAO criarHardwareDAO() {
        return new HardwareDAOImpl();
    };
    public static SolicitanteDAO criarSolicitanteDAO() {
        return new SolicitanteDAOImpl();
    };
    public static RegistrosDAO criarRegistrosDAO() {
        return new RegistrosDAOImpl();
    };
}
