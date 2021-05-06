/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import dao.ProductDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class SearchController extends MenuTemplateController{

  private ProductDao productDao;

  @Autowired
  public void setProductDao(ProductDao productDao) {
    this.productDao = productDao;
  }

  @RequestMapping(value = "/search", method = RequestMethod.GET)
  public ModelAndView adminDashboard(@RequestParam("s") String name, HttpServletRequest request, HttpServletResponse response) {
    ModelAndView model = new ModelAndView("client/search");
    
    model.addObject("products", productDao.getAllproductBySearch(name));
    return model;
  }
}
