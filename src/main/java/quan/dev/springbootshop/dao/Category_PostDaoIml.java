/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.CategoryPost;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Administrator
 */
public class Category_PostDaoIml implements Category_PostDao {

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<CategoryPost> getAllcategory_post() {
        Session session = sessionFactory.openSession();
        List<CategoryPost> list = session.createQuery("from CategoryPost").list();
        return list;
    }

    @Override
    public boolean insert(CategoryPost categorypost) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(categorypost);
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
    public CategoryPost getCatepostById(int id) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            CategoryPost c = (CategoryPost) session.get(CategoryPost.class, id);
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
    public boolean updateCatepots(CategoryPost categorypost) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.update(categorypost);
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
            session.delete(getCatepostById(id));
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
