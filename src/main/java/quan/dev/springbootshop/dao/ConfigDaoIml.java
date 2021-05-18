/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Config;
import quan.dev.springbootshop.entities.Menus;
import quan.dev.springbootshop.entities.Posts;
import quan.dev.springbootshop.entities.Products;
import quan.dev.springbootshop.entities.Users;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author thang
 */
public class ConfigDaoIml implements ConfigDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public Config getConfig(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      Config c = (Config) session.get(Config.class, id);
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
  public boolean updateConfig(Config config) {
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
  public List<Menus> getMenuConfig() {
    Session session = sessionFactory.openSession();
    List<Menus> list = session.createQuery("from Menus where status = 1").list();
    return list;
  }

  @Override
  public long getTotalProduct() {
    return (Long) sessionFactory.openSession().createCriteria(Products.class).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public long getTotalPost() {
    return (Long) sessionFactory.openSession().createCriteria(Posts.class).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public long getTotalUser() {
    return (Long) sessionFactory.openSession().createCriteria(Users.class).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public List<Products> getProductNew() {
    Session session = sessionFactory.openSession();
    List<Products> list = session.createQuery("from Products where status = 1 order by createTime desc").setFirstResult(0).setMaxResults(10).list();
    return list;
  }

  @Override
  public List<Posts> getPostNew() {
    Session session = sessionFactory.openSession();
    List<Posts> list = session.createQuery("from Posts where status = 1 order by createTime desc").setFirstResult(0).setMaxResults(10).list();
    return list;
  }

}
