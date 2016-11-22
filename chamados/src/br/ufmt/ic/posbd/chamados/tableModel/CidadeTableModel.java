/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados.tableModel;

import br.ufmt.ic.posbd.chamadosMySQL.entidade.Cidade;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author raphael
 */
public class CidadeTableModel extends AbstractTableModel {

    private List<Cidade> lista;
    private final String[] titulos = new String[]{"Id",
         "Nome", "Estado", "Pais"};

    public CidadeTableModel(List<Cidade> lista) {
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
        return 4;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Object ret = null;
        Cidade cidade = lista.get(rowIndex);

        switch (columnIndex) {
            case 0:
                ret = cidade.getId();
                break;
            case 1:
                ret = cidade.getNome();
                break;
            case 2:
                ret = cidade.getEstado();
                break;
            case 3:
                ret = cidade.getPais();
                break;
        }

        return ret;
    }

    public void atualizar(List<Cidade> lista) {
        this.lista = lista;
        fireTableDataChanged();
    }

    public Cidade get(int index) {
        return lista.get(index);
    }

}
