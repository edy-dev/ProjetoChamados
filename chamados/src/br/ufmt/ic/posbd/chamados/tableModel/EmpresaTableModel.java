/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamados.tableModel;

import br.ufmt.ic.posbd.chamadosMySQL.entidade.Empresa;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author edy
 */
public class EmpresaTableModel extends AbstractTableModel {

    private List<Empresa> lista;
    private final String[] titulos = new String[]{"Id",
         "Nome", "CNPJ", "Cidade"};

    public EmpresaTableModel(List<Empresa> lista) {
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
        Empresa empresa = lista.get(rowIndex);

        switch (columnIndex) {
            case 0:
                ret = empresa.getId();
                break;
            case 1:
                ret = empresa.getNome();
                break;
            case 2:
                ret = empresa.getCNPJ();
                break;
            case 3:
                ret = empresa.getCidade();
                break;
        }

        return ret;
    }

    public void atualizar(List<Empresa> lista) {
        this.lista = lista;
        fireTableDataChanged();
    }

    public Empresa get(int index) {
        return lista.get(index);
    }

}
