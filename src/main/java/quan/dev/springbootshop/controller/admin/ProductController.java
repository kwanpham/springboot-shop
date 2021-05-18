/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import quan.dev.springbootshop.dao.CategoryDao;
import quan.dev.springbootshop.dao.ProductDao;
import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.Products;
import quan.dev.springbootshop.entities.ProductsInsert;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@SessionAttributes("accountAdmin")

@Controller
public class ProductController {

  private ProductDao productDao;

  @Autowired
  public void setProductDao(ProductDao productDao) {
    this.productDao = productDao;
  }
  @Autowired
  ServletContext context;
  private CategoryDao categoryDao;

  @Autowired

  public void setProductDao(CategoryDao categoryDao) {
    this.categoryDao = categoryDao;
  }

  @RequestMapping(value = "/admin/product/index", method = RequestMethod.GET)
  public ModelAndView productIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    if(session.getAttribute("accountAdmin")==null){
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/index_product");
    model.addObject("listProduct", productDao.getAllproduct());
    return model;
  }

  @RequestMapping(value = "/admin/product/edit")
  public ModelAndView categoryDetail(@RequestParam("productId") int productId) {
    ModelAndView model = new ModelAndView("admin/edit_product");
    Products product = productDao.getProductById(productId);
    List<Categories> categories = new ArrayList<>();
    categories = categoryDao.getAllcategory();
    model.getModelMap().put("product", product);
    model.getModelMap().put("url", "update");
    model.getModelMap().put("categories", categories);
    return model;
  }

  @RequestMapping(value = "/admin/product/update", method = RequestMethod.POST)
  public String update(@ModelAttribute("product") ProductsInsert productsInsert, RedirectAttributes redirectAttributes) throws Exception {
    MultipartFile file = productsInsert.getImage();
    boolean status = false;
    try {
      return this.doUpload(productsInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  @RequestMapping(value = "/admin/product/add")
  public ModelAndView categoryDetail() {
    ModelAndView model = new ModelAndView("admin/edit_product");
    Products product = new Products();
    List<Categories> categories = new ArrayList<>();
    categories = categoryDao.getAllcategory();
    model.getModelMap().put("product", product);
    model.getModelMap().put("url", "add");
    model.getModelMap().put("categories", categories);
    return model;
  }

  @RequestMapping(value = "/admin/product/add", method = RequestMethod.POST)
  public String add(@ModelAttribute("product") ProductsInsert productsInsert, RedirectAttributes redirectAttributes) {
    boolean status = true;
    MultipartFile file = productsInsert.getImage();
    if (file.getOriginalFilename().isEmpty()) {
      redirectAttributes.addFlashAttribute("status", "Hãy chọn ảnh trước khi tạo mới sản phẩm");
      return "redirect:index";
    }
    try {
      return this.doUpload(productsInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    redirectAttributes.addFlashAttribute("status", "Thêm mới được dữ liệu. Vui lòng thử lại !");
    return "redirect:add";
  }

  @RequestMapping(value = "/admin/product/delete")
  public String delete(@RequestParam("productId") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = productDao.delete(id);
    if (blDelete) {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
    } else {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
    }
    return "redirect:index";
  }

  public String file_name;
  private SessionFactory sessionFactory;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  public String doUpload(ProductsInsert productsInsert, MultipartFile file, RedirectAttributes redirectAttributes, boolean status) throws IOException {
    Session session = sessionFactory.openSession();
    String uploadPath = context.getRealPath("") + File.separator + "resources/images/" + File.separator;
    if (!file.isEmpty()) {
      file_name = file.getOriginalFilename();
    } else {
      Products c = (Products) session.get(Products.class, productsInsert.getId());
      file_name = c.getImage();
    }
    Products product = new Products(
            productsInsert.getId(),
            productsInsert.getName(),
            productsInsert.getPrice(),
            productsInsert.getPriceSale(),
            productsInsert.getQuantity(),
            productsInsert.getAveragePoint(),
            file_name,
            productsInsert.getCreateTime(),
            productsInsert.getStatus(),
            productsInsert.getCategoryId(),
            productsInsert.getDescription(),
            productsInsert.getCode()
    );
    boolean blInsert;
    if (status == true) {
      blInsert = productDao.insert(product);
    } else {
      blInsert = productDao.updateProduct(product);
    }
    if (blInsert) {
      if (!file.getOriginalFilename().isEmpty()) {
        byte[] bytes = file.getBytes();
        FileCopyUtils.copy(bytes, new File(uploadPath + file.getOriginalFilename()));
      }
      redirectAttributes.addFlashAttribute("status", "Chỉnh sửa dữ liệu thành công");
      return "redirect:index";
    } else {
      redirectAttributes.addFlashAttribute("status", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
    }
    return "redirect:edit?productId=" + product.getId() + "";
  }
}
