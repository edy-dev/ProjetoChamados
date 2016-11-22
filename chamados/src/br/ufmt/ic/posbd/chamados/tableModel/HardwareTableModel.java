/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados.tableModel;

import br.ufmt.ic.posbd.chamadosMySQL.entidade.Hardware;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author edy
 */
public class HardwareTableModel extends AbstractTableModel {

    private List<Hardware> lista;
    private final String[] titulos = new String[]{"Id",
         "Nome", "Tipo", "Fabricante"};

    public HardwareTableModel(List<Hardware> lista) {
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
        Hardware hardware = lista.get(rowIndex);

        switch (columnIndex) {
            case 0:
                ret = hardware.getId();
                break;
            case 1:
                ret = hardware.getNome();
                break;
            case 2:
                ret = hardware.getTipo();
                break;
            case 3:
                ret = hardware.getFabricante();
                break;
        }

        return ret;
    }

    public void atualizar(List<Hardware> lista) {
        this.lista = lista;
        fireTableDataChanged();
    }

    public Hardware get(int index) {
        return lista.get(index);
    }

}
