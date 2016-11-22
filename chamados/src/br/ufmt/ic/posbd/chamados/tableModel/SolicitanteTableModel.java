/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados.tableModel;

import br.ufmt.ic.posbd.chamadosPostgres.entidade.Solicitante;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author edy
 */
public class SolicitanteTableModel extends AbstractTableModel {

    private List<Solicitante> lista;
    private final String[] titulos = new String[]{"Id",
         "Nome", "CPF"};

    public SolicitanteTableModel(List<Solicitante> lista) {
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
        return 3;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Object ret = null;
        Solicitante solicitante = lista.get(rowIndex);

        switch (columnIndex) {
            case 0:
                ret = solicitante.getId();
                break;
            case 1:
                ret = solicitante.getNome();
                break;
            case 2:
                ret = solicitante.getCPF();
                break;
        }
        return ret;
    }

    public void atualizar(List<Solicitante> lista) {
        this.lista = lista;
        fireTableDataChanged();
    }

    public Solicitante get(int index) {
        return lista.get(index);
    }

}
