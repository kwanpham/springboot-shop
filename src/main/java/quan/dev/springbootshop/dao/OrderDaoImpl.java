/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.Config;
import entities.Menus;
import entities.Orderdetails;
import entities.Orders;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author thang
 */
public class OrderDaoImpl implements OrderDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Orders> getAllOrder(Integer offset, Integer maxResults) {
    return sessionFactory.openSession().createCriteria(Orders.class).addOrder(Order.desc("createdAt"))
            .setFirstResult(offset != null ? offset : 0)
            .setMaxResults(maxResults != null ? maxResults : 10)
            .list();
  }

  @Override
  public long getTotalOrder() {
    return (Long) sessionFactory.openSession().createCriteria(Orders.class).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public Orders viewOrderDetails(int id) {
    try {
      Session session = sessionFactory.openSession();
      session.beginTransaction();
      Query query = session.createQuery("from Orders where orderId=?");
      query.setParameter(0, id);
      Orders m = (Orders) query.uniqueResult();
      session.getTransaction().commit();
      session.close();
      return m;
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  @Override
  public List<Orderdetails> detailsProductOrder(int id) {
    try {
      Session session = sessionFactory.openSession();
      Query query = session.createQuery("from Orderdetails where orderId=?");
      query.setParameter(0, id);
      List<Orderdetails> list = query.list();
      return list;
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  @Override
  //xác nhận đơn hànhg
  public boolean confirmOrder(int id) {
    if (id > 0) {
      Session session = sessionFactory.openSession();
      Query query = session.createQuery("update Orders set status=3 where orderId=?");
      query.setParameter(0, id);
      query.executeUpdate();
      return true;
    } else {
      return false;
    }
  }

  @Override
  //hủy đơn hàng
  public boolean cancelOrder(int id) {
    if (id > 0) {
      Session session = sessionFactory.openSession();
      Query query = session.createQuery("update Orders set status=2 where orderId=?");
      query.setParameter(0, id);
      query.executeUpdate();
      return true;
    } else {
      return false;
    }
  }

  @Override
  public Orders getOrderById(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      Orders c = (Orders) session.get(Orders.class, id);
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
  public boolean deleteOrder(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      session.delete(getOrderById(id));
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

}
