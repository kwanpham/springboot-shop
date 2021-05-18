/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.Config;
import quan.dev.springbootshop.entities.ConfigHome;
import quan.dev.springbootshop.entities.Menus;
import quan.dev.springbootshop.entities.Orderdetails;
import quan.dev.springbootshop.entities.Products;
import quan.dev.springbootshop.entities.Slides;
import java.util.List;
import quan.dev.springbootshop.entities.Orders;
import quan.dev.springbootshop.entities.Posts;
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
