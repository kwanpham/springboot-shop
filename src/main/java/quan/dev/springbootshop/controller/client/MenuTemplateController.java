/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import dao.HomeDao;
import dao.SlidesDao;
import entities.Cart;
import entities.Categories;
import entities.CategoryPost;
import entities.Config;
import entities.Menus;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 *
 * @author Administrator
 */
@Controller
public class MenuTemplateController {

  public SlidesDao slidesDao;

  @Autowired
  public void setSlidesDao(SlidesDao slidesDao) {
    this.slidesDao = slidesDao;
  }

  public HomeDao homeDao;

  @Autowired
  public void setHomeDAO(HomeDao homeDao) {
    this.homeDao = homeDao;
  }

  public @ModelAttribute
  void global(ModelMap map, HttpSession session) {
    List<Menus> mainmenu = homeDao.getMainMenu();
    map.addAttribute("mainmenu", mainmenu);
    map.addAttribute("slides", slidesDao.getAllSlide());
    List<Categories> list_menu_cate = homeDao.getMenuListCategorys();
    map.addAttribute("list_menu_cate", list_menu_cate);

    List<CategoryPost> list_menu_post = homeDao.getMenuListCategoryPost();
    map.addAttribute("list_menu_post", list_menu_post);
    //config footer
    Config cf_footer = homeDao.getConfigFooter(1);
    map.addAttribute("cf_footer", cf_footer);
    
    if (session.getAttribute("listCart") != null) {
      List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
      map.addAttribute("count_cart_item", listCart.size());
    }
  }
}
