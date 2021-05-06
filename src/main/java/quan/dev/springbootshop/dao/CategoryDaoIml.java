/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Administrator
 */
public class CategoryDaoIml implements CategoryDao {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Categories> getAllcategory() {
        Session session = sessionFactory.openSession();
        List<Categories> list = session.createQuery("from Categories").list();
        return list;
    }

    @Override
    public Categories getCateById(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            Categories c = (Categories) session.get(Categories.class, id);
            session.getTransaction().commit();
            session.close();
            return c;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean updateCate(Categories category) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.update(category);
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
    public boolean insert(Categories category) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(category);
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
            session.delete(getCateById(id));
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
