/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

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
public class UserDaoImpl implements UsersDao {
    private SessionFactory sessionFactory;
    
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    @Override
    public Users findByUserEmail(Users user) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            Query query = session.createQuery("from Users where email= :email and password= :password");
            query.setParameter("email", user.getEmail());
            query.setParameter("password", user.getPassword());
            Users u = (Users) query.uniqueResult();
            session.getTransaction().commit();
            session.close();
            return u;
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        }
        return null;
   }

    @Override
    public List<Users> getAllUser() {
        Session session = sessionFactory.openSession();
        List<Users> list = session.createQuery("from Users").list();
        return list;
    }

    @Override
    public boolean insert(Users user) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(user);
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
    public Users getUserById(int id) {
      Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            Users u = (Users) session.get(Users.class, id);
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
            session.delete(getUserById(id));
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
    public boolean updateuser(Users user) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.update(user);
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
