/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.Products;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Administrator
 */
public class ProductDaoIml implements ProductDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Products> getAllproduct() {
    Session session = sessionFactory.openSession();
    List<Products> list = session.createQuery("from Products order by createTime desc").list();
    return list;
  }

  @Override
  public Products getProductById(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      Products c = (Products) session.get(Products.class, id);
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
  public boolean updateProduct(Products product) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      if (product.getImage().isEmpty()) {
        Products c = (Products) session.get(Products.class, product.getId());
        product.setImage(c.getImage());
      }
      session.update(product);
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
  public boolean insert(Products product) {
    Session session = sessionFactory.openSession();
    try {
      product.setCreateTime(new Date());
      session.beginTransaction();
      session.save(product);
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
      session.delete(getProductById(id));
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
  public List<Products> getAllproductBySearch(String name) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Products where name like concat('%',:name,'%') or price = :name");
    query.setParameter("name", name);
    List<Products> list = query.list();
    return list;
  }

  @Override
  public List<Products> getProductByCategory(int id, Integer offset, Integer maxResults) {
    return sessionFactory.openSession().createCriteria(Products.class)
            .add(Restrictions.eq("categoryId", id))
            .addOrder(Order.desc("createTime"))
            .setFirstResult(offset != null ? offset : 0)
            .setMaxResults(maxResults != null ? maxResults : 16)
            .list();
  }

  @Override
  public long getTotalProductCategory(int id) {
    return (Long) sessionFactory.openSession().createCriteria(Products.class).add(Restrictions.eq("categoryId", id)).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public List<Categories> getCategoryListMenu() {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Categories where status = 1");
    List<Categories> list = query.list();
    return list;
  }

  @Override
  public Categories getCategoryById(int id) {
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
  public List<Products> getRelatedProducts(int id) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Products where categoryId = ?");
    query.setParameter(0,id);
    List<Products> list = query.list();
    return list;
  }
}
