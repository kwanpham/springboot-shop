/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Cart;
import entities.Categories;
import entities.CategoryPost;
import entities.Config;
import entities.ConfigHome;
import entities.Menus;
import entities.Orderdetails;
import entities.Products;
import entities.Slides;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import entities.Orders;
import entities.Posts;
import java.math.BigDecimal;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author thang
 */
public class HomeDaoIml implements HomeDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Menus> getMainMenu() {
    Session session = sessionFactory.openSession();
    List<Menus> list = session.createQuery("from Menus where status = 1 order by sequence asc").list();
    return list;
  }

  @Override
  public List<Categories> getMenuListCategorys() {
    Session session = sessionFactory.openSession();
    List<Categories> list = session.createQuery("from Categories where status = 1").list();
    return list;
  }

  @Override
  public List<Slides> getSliderHome() {
    Session session = sessionFactory.openSession();
    List<Slides> list = session.createQuery("from Slides where status = 1").list();
    return list;
  }

  @Override
  public List<Products> getCollectionHome(int id) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Products where categoryId=?");
    query.setParameter(0, id);
    List<Products> list = query.list();
    return list;
  }

  @Override
  public ConfigHome getConfigHomeId(int id) {
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

  public boolean sendOrderCheckOut(Orders order, HttpSession sessions) {
    Session session = sessionFactory.openSession();
    int id = 0;
    try {
      session.beginTransaction();
      order.setCreatedAt(new Date());
      session.save(order);

      id = order.getOrderId();
      List<Cart> listCart = (List<Cart>) sessions.getAttribute("listCart");
      Cart carts = new Cart();
      for (int i = 0; i < listCart.size(); i++) {
        Orderdetails details = new Orderdetails();
        details.setOrderId(id);
        details.setQuanlity(listCart.get(i).getQuantity());
        details.setProductName(listCart.get(i).getProducts().getName());
        details.setProductId(listCart.get(i).getProducts().getId());
        details.setPriceProduct(BigDecimal.valueOf(listCart.get(i).getProducts().getPrice()));
        details.setImages(listCart.get(i).getProducts().getImage());
        session.save(details);
      }
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
  public Config getConfigFooter(int id) {
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
  public List<Menus> getParentsMenu(int id) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Menus where parents=?");
    query.setParameter(0, id);
    List<Menus> list = query.list();
    return list;
  }

  @Override
  public List<CategoryPost> getMenuListCategoryPost() {
    Session session = sessionFactory.openSession();
    List<CategoryPost> list = session.createQuery("from CategoryPost where status = 1").list();
    return list;
  }

  @Override
  public List<Posts> getCollectionBlog(int id) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Posts where categoryId = ? and status = 1 order by createTime desc");
    query.setParameter(0, id);
    query.setFirstResult(0);
    query.setMaxResults(3);
    List<Posts> list = query.list();
    return list;
  }

}
