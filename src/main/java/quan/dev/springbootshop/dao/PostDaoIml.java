/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.CategoryPost;
import entities.Posts;
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
public class PostDaoIml implements PostDao {

  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Posts> getAllpost() {
    Session session = sessionFactory.openSession();
    List<Posts> list = session.createQuery("from Posts").list();
    return list;
  }

  @Override
  public List<Posts> getAllpostBySearch(String name) {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Posts where name like concat('%',:name,'%')");
    query.setParameter("name", name);
    List<Posts> list = query.list();
    return list;
  }

  @Override
  public boolean insert(Posts post) {
    Session session = sessionFactory.openSession();
    try {
      post.setCreateTime(new Date());
      session.beginTransaction();
      session.save(post);
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
  public Posts getPostById(int id) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      Posts c = (Posts) session.get(Posts.class, id);
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
  public boolean updatePost(Posts post) {
    Session session = sessionFactory.openSession();
    try {
      session.beginTransaction();
      if (post.getImage().isEmpty()) {
        Posts c = (Posts) session.get(Posts.class, post.getId());
        post.setImage(c.getImage());
      }
      session.update(post);
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
      session.delete(getPostById(id));
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
  public long getTotalPostCategory(int id) {
    return (Long) sessionFactory.openSession().createCriteria(Posts.class).add(Restrictions.eq("categoryId", id)).setProjection(Projections.rowCount()).uniqueResult();
  }

  @Override
  public List<Posts> getPostByCategory(int id, Integer offset, Integer maxResults) {
    return sessionFactory.openSession().createCriteria(Posts.class)
            .add(Restrictions.eq("categoryId", id))
            .add(Restrictions.eq("status", true))
            .addOrder(Order.desc("createTime"))
            .setFirstResult(offset != null ? offset : 0)
            .setMaxResults(maxResults != null ? maxResults : 10)
            .list();
  }

  @Override
  public List<Posts> getCategoryPostListMenu() {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Posts where status = 1");
    List<Posts> list = query.list();
    return list;
  }

  public CategoryPost getCategoryPostById(int id) {
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
  public List<Categories> getCategoryListMenu() {
    Session session = sessionFactory.openSession();
    Query query = session.createQuery("from Categories where status = 1");
    List<Categories> list = query.list();
    return list;
  }
}
