/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.ufmt.ic.posbd.chamados.dao;

import java.util.List;

/**
 *
 * @author edy
 */
public interface DAO<T> {
    
    public boolean inserir(T t);
    
    public boolean alterar(T t);
    
    public boolean excluir(int id);
    
    public T consultar(int id);
    
    public List<T> listar();
}
