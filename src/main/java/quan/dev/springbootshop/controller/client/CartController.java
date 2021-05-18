/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import quan.dev.springbootshop.dao.ProductDao;
import quan.dev.springbootshop.entities.Cart;
import quan.dev.springbootshop.entities.Products;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
public class CartController extends MenuTemplateController {

  private ProductDao productDao;

  @Autowired
  public void setProductDao(ProductDao productDao) {
    this.productDao = productDao;
  }

  @RequestMapping(value = "/addcart", method = RequestMethod.GET)
  public String adminDashboard(@RequestParam("id") int id, HttpSession session) {
    Products product = productDao.getProductById(id);
    List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
    if (listCart == null) {
      listCart = new ArrayList<>();
      Cart cart = new Cart(product, 1);
      listCart.add(cart);
    } else {
      boolean flag = true;
      for (Cart c : listCart) {
        if (c.getProducts().getId() == id) {
          c.setQuantity(c.getQuantity() + 1);
          flag = false;
          break;
        }
      }
      if (flag) {
        Cart cart = new Cart(product, 1);
        listCart.add(cart);
      }
    }
    float total = getTotal(listCart);
    session.setAttribute("listCart", listCart);
    session.setAttribute("total", getTotal(listCart));
    return "redirect:cart";
  }

  public float getTotal(List<Cart> listCart) {
    float total = 0;
    for (Cart c : listCart) {
      total += c.getQuantity() * c.getProducts().getPrice();
    }
    return total;
  }

  @RequestMapping("/cart")
  public ModelAndView listCart(HttpSession session) {
    ModelAndView model = new ModelAndView("client/cart");
    if (session.getAttribute("listCart") != null) {
      List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
      model.addObject("total", session.getAttribute("total"));
      model.addObject("count_cart", listCart.size());
//      if (listCart.isEmpty()) {
//        return new ModelAndView("redirect:/");
//      }
    }
    return model;
  }

  @RequestMapping(value = "/update")
  public String update(HttpServletRequest request, HttpSession session) {
    List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
    String[] arrQuantity = request.getParameterValues("quantity");
    for (int i = 0; i < listCart.size(); i++) {
      listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
      if (Integer.parseInt(arrQuantity[i]) < 1) {
        listCart.get(i).setQuantity(1);
      }
    }
    session.setAttribute("listCart", listCart);
    session.setAttribute("total", getTotal(listCart));
    return "redirect:cart";
  }

  @RequestMapping(value = "/remove", method = RequestMethod.GET)
  public String remove(@RequestParam("Id") int id, HttpSession session) {
    List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
    if (listCart != null) {
      for (int i = 0; i < listCart.size(); i++) {
        if (listCart.get(i).getProducts().getId() == id) {
          listCart.remove(i).getProducts().getId();
          break;
        }
      }
    }
    session.setAttribute("listCart", listCart);
    session.setAttribute("total", getTotal(listCart));
    return "redirect:cart";
  }
}
