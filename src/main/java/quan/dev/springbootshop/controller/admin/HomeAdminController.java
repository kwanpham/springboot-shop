/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import javax.servlet.http.HttpSession;
import dao.ConfigDao;
import entities.Posts;
import entities.Products;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Administrator
 */
@Controller
public class HomeAdminController {

  private ConfigDao configDao;

  @Autowired
  public void setConfigDao(ConfigDao configDao) {
    this.configDao = configDao;
  }

  @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
  public ModelAndView adminDashboard(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    if (session.getAttribute("accountAdmin") == null) {
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/dashboard");
    model.getModelMap().put("count_product", configDao.getTotalProduct());
    model.getModelMap().put("count_post", configDao.getTotalPost());
    model.getModelMap().put("count_user", configDao.getTotalUser());

    List<Products> product = configDao.getProductNew();
    model.getModelMap().put("product", product);
    List<Posts> post = configDao.getPostNew();
    model.getModelMap().put("post", post);
    return model;
  }
}
