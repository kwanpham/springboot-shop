/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import quan.dev.springbootshop.dao.HomeDao;
import quan.dev.springbootshop.dao.SlidesDao;
import quan.dev.springbootshop.entities.Cart;
import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.ConfigHome;
import quan.dev.springbootshop.entities.Orders;
import quan.dev.springbootshop.entities.Config;
import quan.dev.springbootshop.entities.Menus;
import quan.dev.springbootshop.entities.Posts;
import quan.dev.springbootshop.entities.Products;
import quan.dev.springbootshop.entities.Slides;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@Controller
public class HomeController extends MenuTemplateController {

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ModelAndView homeIndex() {
    ModelAndView model = new ModelAndView("client/index");
    List<Slides> slides_home = homeDao.getSliderHome();
    model.addObject("slides_home", slides_home);

    //get collection product 
    ConfigHome confighome = homeDao.getConfigHomeId(1);
    model.getModelMap().put("confighm", confighome);

    List<CategoryPost> list_menu_post = homeDao.getMenuListCategoryPost();
    model.addObject("list_menu_post", list_menu_post);

    List<Products> product_home_1 = homeDao.getCollectionHome(confighome.getCollectionList1());
    model.addObject("product_home_1", product_home_1);

    List<Products> product_home_2 = homeDao.getCollectionHome(confighome.getCollectionList2());
    model.addObject("product_home_2", product_home_2);

    List<Products> product_home_3 = homeDao.getCollectionHome(confighome.getCollectionList3());
    model.addObject("product_home_3", product_home_3);

    List<Products> product_home_4 = homeDao.getCollectionHome(confighome.getCollectionList4());
    model.addObject("product_home_4", product_home_4);

    List<Products> product_home_5 = homeDao.getCollectionHome(confighome.getCollectionList5());
    model.addObject("product_home_5", product_home_1);

    List<Products> product_home_6 = homeDao.getCollectionHome(confighome.getCollectionList6());
    model.addObject("product_home_6", product_home_6);

    List<Posts> blog_home = homeDao.getCollectionBlog(confighome.getBlogList());
    model.addObject("blog_home", blog_home);
    return model;
  }

  @RequestMapping(value = "checkouts", method = RequestMethod.GET)
  public ModelAndView checkOutList(HttpSession session) {
    ModelAndView model = new ModelAndView("client/checkouts");
    if (session.getAttribute("listCart") != null) {
      List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
      model.getModelMap().put("url", "send-order");
      model.addObject("total", session.getAttribute("total"));
      model.addObject("count_cart", listCart.size());
    }
    return model;
  }

  @RequestMapping(value = "thank-you", method = RequestMethod.GET)
  public ModelAndView thankyou() {
    ModelAndView model = new ModelAndView("client/thank-you");
    return model;
  }

  @RequestMapping(value = "send-order", method = RequestMethod.POST)
  public String sendOrderCheckOut(@ModelAttribute("checkout") Orders order, Model model, RedirectAttributes redirectAttributes, HttpSession session) {
    boolean blInsert = homeDao.sendOrderCheckOut(order, session);
    if (blInsert) {
      List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
      listCart.removeAll(listCart);
      return "redirect:thank-you";
    } else {
      return "redirect:checkouts";
    }
  }

//  @RequestMapping(value = "/**", method = {RequestMethod.GET, RequestMethod.POST})
//  public HttpSession defaultPath(HttpSession session) {
//    List<Menus> mainmenu = homeDao.getMainMenu();
//    session.setAttribute("mainmenu", mainmenu);
//    return null;
//  }
}
