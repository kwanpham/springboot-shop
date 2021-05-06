/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Contacs;
import entities.Users;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Administrator
 */
public class ContacsDaoImpl implements ContacsDao {
    private SessionFactory sessionFactory;
    
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Contacs> getAllContac() {
        Session session = sessionFactory.openSession();
        List<Contacs> list = session.createQuery("from Contacs order by id desc").list();
        return list;
    }

    @Override
    public Contacs getContacById(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            Contacs u = (Contacs) session.get(Contacs.class, id);
            session.getTransaction().commit();
            session.close();
            return u;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean delete(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.delete(getContacById(id));
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e1) {
            e1.printStackTrace();
            session.getTransaction().rollback();
        }
        return false;
    }

    @Override
    public boolean insert(Contacs contacs) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(contacs);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
        return false;
    }
    
    


}
