/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Slides;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Administrator
 */
public class SlideDaoImpl implements SlidesDao {
    private SessionFactory sessionFactory;
    
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Slides> getAllSlide() {
        Session session = sessionFactory.openSession();
        List<Slides> list = session.createQuery("from Slides").list();
        return list;
    }

    @Override
    public boolean insert(Slides slide) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(slide);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Slides getSlideById(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            Slides u = (Slides) session.get(Slides.class, id);
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
    public boolean updateslide(Slides slide) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.update(slide);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.delete(getSlideById(id));
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e1) {
            e1.printStackTrace();
            session.getTransaction().rollback();
        }
        return false;
    }


}
