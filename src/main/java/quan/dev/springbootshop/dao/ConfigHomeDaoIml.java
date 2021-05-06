/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.CategoryPost;
import entities.ConfigHome;
import entities.Posts;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author thang
 */
public class ConfigHomeDaoIml implements ConfigHomeDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public ConfigHome getConfigHome(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      ConfigHome c = (ConfigHome) session.get(ConfigHome.class, id);
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
  public boolean updateConfigHome(ConfigHome config) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      session.update(config);
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
  public List<Categories> getCategoryListHome() {
    Session session = sessionFactory.openSession();
    List<Categories> list = session.createQuery("from Categories where status = 1").list();
    return list;
  }

  @Override
  public List<CategoryPost> getCategoryPostListHome() {
    Session session = sessionFactory.openSession();
    List<CategoryPost> list = session.createQuery("from CategoryPost where status = 1").list();
    return list;
  }

}
