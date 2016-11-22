/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufmt.ic.posbd.chamadosMySQL.entidade;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author edy
 */
@Entity
@Table(name = "cidade")
public class Cidade implements ICRUD {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "nome", length = 100)
    private String nome;
    @Column(name = "estado", length = 100)
    private String estado;
    @Column(name = "pais", length = 100)
    private String pais;

    //ID
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    //NOME
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    //ESTADO
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    //PAIS
    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

}
