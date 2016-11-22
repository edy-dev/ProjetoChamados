/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.ufmt.ic.posbd.chamados.dao.jpa;

import br.ufmt.ic.posbd.chamados.dao.DAO;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author edy
 */
public class DAOImpl<J> implements DAO<J>{

    protected EntityManagerFactory emf = 
            Persistence.createEntityManagerFactory("chamadosPU");
    private Class cls;
    
    public DAOImpl(){
        cls = (Class<J>) ((ParameterizedType) getClass()
                .getGenericSuperclass())
                .getActualTypeArguments()[0];
    }
    
    @Override
    public boolean inserir(J t) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(t);
        em.getTransaction().commit();
        return true;
    }

    @Override
    public boolean alterar(J t) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(t);
        em.getTransaction().commit();
        return true;
    }

    @Override
    public boolean excluir(int id) {
        EntityManager em = emf.createEntityManager();
        J j = (J) em.find(cls, id);
        em.getTransaction().begin();
        em.remove(j);
        em.getTransaction().commit();
        return true;
    }

    @Override
    public J consultar(int id) {
        EntityManager em = emf.createEntityManager();
        J j = (J) em.find(cls, id);
        return j;
    }

    @Override
    public List<J> listar() {
        EntityManager em = emf.createEntityManager();
        String nome = cls.getSimpleName();
        Query query = em.createQuery("SELECT c FROM "+nome+" c");
        return query.getResultList();
    }
    
}
