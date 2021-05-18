/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.Menus;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author thang
 */
public class MenuDaoIml implements MenuDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Menus> getAllMenu(Integer offset, Integer maxResults) {
    return sessionFactory.openSession().createCriteria(Menus.class)
            .setFirstResult(offset != null ? offset : 0)
            .setMaxResults(maxResults != null ? maxResults : 10)
            .list();
  }

  @Override
  public List<Menus> getDataMenuParents() {
    Session session = sessionFactory.openSession();
    List<Menus> list = session.createQuery("from Menus where status = 1 order by createdAt desc").list();
    return list;
  }

  @Override
  public long getTotalMenu() {
    return (Long) sessionFactory.openSession().createCriteria(Menus.class).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public boolean insertMenu(Menus menu) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      menu.setCreatedAt(new Date());
      session.save(menu);
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
  public Menus getMenuById(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      Menus c = (Menus) session.get(Menus.class, id);
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
  public boolean updateMenu(Menus menu) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      session.update(menu);
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
  public boolean deleteMenu(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      session.delete(getMenuById(id));
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
  public List<Categories> ajaxGetDataCategory() {
    Session session = sessionFactory.openSession();
    List<Categories> list = session.createQuery("from Categories where status = 1").list();
    return list;
  }

  @Override
  public List<CategoryPost> ajaxGetDataCategoryPost() {
    Session session = sessionFactory.openSession();
    List<CategoryPost> list = session.createQuery("from CategoryPost where status = 1").list();
    return list;
  }

}
