/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados.tableModel;

import br.ufmt.ic.posbd.chamadosPostgres.entidade.Registros;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author edy
 */
public class RegistrosTableModel extends AbstractTableModel {

    private List<Registros> lista;
    private final String[] titulos = new String[]{"Id",
        "Descricao", "Hardware", "Solicitante", "Status",};

    public RegistrosTableModel(List<Registros> lista) {
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
        return 5;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Object ret = null;
        Registros registros = lista.get(rowIndex);

        switch (columnIndex) {
            case 0:
                ret = registros.getId();
                break;
            case 1:
                ret = registros.getDescricao();
                break;
            case 2:
                ret = registros.getHardware();
                break;
            case 3:
                ret = registros.getSolicitante();
                break;
            case 4:
                ret = registros.getStatus();
                break;
        }

        return ret;
    }

    public void atualizar(List<Registros> lista) {
        this.lista = lista;
        fireTableDataChanged();
    }

    public Registros get(int index) {
        return lista.get(index);
    }

}
