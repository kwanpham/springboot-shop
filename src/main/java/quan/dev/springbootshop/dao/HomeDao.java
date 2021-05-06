/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.CategoryPost;
import entities.Config;
import entities.ConfigHome;
import entities.Menus;
import entities.Orderdetails;
import entities.Products;
import entities.Slides;
import java.util.List;
import entities.Orders;
import entities.Posts;
import javax.servlet.http.HttpSession;

/**
 *
 * @author thang
 */
public interface HomeDao {

  public List<Menus> getMainMenu();

  public List<Categories> getMenuListCategorys();

  public List<CategoryPost> getMenuListCategoryPost();

  public List<Menus> getParentsMenu(int id);

  public List<Slides> getSliderHome();

  public ConfigHome getConfigHomeId(int id);

  public List<Products> getCollectionHome(int id);

  public List<Posts> getCollectionBlog(int id);

  public Config getConfigFooter(int id);

  public boolean sendOrderCheckOut(Orders order, HttpSession sessions);

}
