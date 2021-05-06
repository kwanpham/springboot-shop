/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import dao.ProductDao;
import entities.Categories;
import entities.Products;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
public class ProductClientController extends MenuTemplateController{

  private ProductDao productDao;

  @Autowired
  public void setProductDao(ProductDao productDao) {
    this.productDao = productDao;
  }

  @RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
  public ModelAndView detailCategory(@PathVariable("id") int id, Integer offset, Integer maxResult) {
    ModelAndView model = new ModelAndView("client/category_detail");
    List<Products> product = productDao.getProductByCategory(id, offset, maxResult);
    model.getModelMap().put("product", product);
    model.getModelMap().put("ids", id);
    model.getModelMap().put("offset", offset);
    model.addObject("count", productDao.getTotalProductCategory(id));

    model.getModelMap().put("cateid", productDao.getCategoryById(id));

    List<Categories> cates = productDao.getCategoryListMenu();
    model.getModelMap().put("cates", cates);
    return model;
  }

  @RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
  public ModelAndView detailProduct(@PathVariable("id") int id) {
    ModelAndView model = new ModelAndView("client/product_detail");
    Products product = productDao.getProductById(id);
    model.getModelMap().put("product", product);

    model.getModelMap().put("related_product", productDao.getRelatedProducts(product.getCategoryId()));
    return model;
  }
}
