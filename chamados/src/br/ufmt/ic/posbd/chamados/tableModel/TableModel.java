/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.ufmt.ic.posbd.chamados.tableModel;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author raphael
 */
public abstract class TableModel<T> extends AbstractTableModel {

    protected List<T> lista;
    protected String[] titulos = new String[]{};
    
    public TableModel(List<T> lista) {
        this.lista = lista;
    }
    
    @Override
    public int getRowCount() {
        return lista.size();
    }

    @Override
    public String getColumnName(int column) {
        return titulos[column];
    }
    
    @Override
    public int getColumnCount() {
        return titulos.length;
    }
    
    public void atualizar(List<T> lista){
        this.lista = lista;
        fireTableDataChanged();
    }
    
    public T get(int index){
        return lista.get(index);
    }
    
}
