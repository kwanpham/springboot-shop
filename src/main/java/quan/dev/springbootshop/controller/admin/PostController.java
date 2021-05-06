/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import dao.CategoryDao;
import dao.Category_PostDao;
import dao.PostDao;
import dao.ProductDao;
import entities.Categories;
import entities.CategoryPost;
import entities.PostInsert;
import entities.Posts;
import entities.Products;
import entities.ProductsInsert;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@Controller
public class PostController {

  private PostDao postDao;

  @Autowired
  public void setPostDao(PostDao postDao) {
    this.postDao = postDao;
  }
  @Autowired
  ServletContext context;
  private Category_PostDao category_postDao;

  @Autowired

  public void setCategory_PostDao(Category_PostDao category_postDao) {
    this.category_postDao = category_postDao;
  }

  @RequestMapping(value = "/admin/post/index", method = RequestMethod.GET)
  public ModelAndView postIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    if (session.getAttribute("accountAdmin") == null) {
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/index_post");
    model.addObject("listPost", postDao.getAllpost());
    return model;
  }

  @RequestMapping(value = "/admin/post/edit")
  public ModelAndView categoryDetail(@RequestParam("postId") int postId) {
    ModelAndView model = new ModelAndView("admin/edit_post");
    Posts post = postDao.getPostById(postId);
    List<CategoryPost> categorypost = new ArrayList<>();
    categorypost = category_postDao.getAllcategory_post();
    model.getModelMap().put("post", post);
    model.getModelMap().put("url", "update");
    model.getModelMap().put("categorypost", categorypost);
    return model;
  }

  @RequestMapping(value = "/admin/post/update", method = RequestMethod.POST)
  public String update(@ModelAttribute("post") PostInsert postInsert, RedirectAttributes redirectAttributes) throws Exception {
    MultipartFile file = postInsert.getImage();
    boolean status = false;
    try {
      return this.doUpload(postInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  @RequestMapping(value = "/admin/post/add")
  public ModelAndView categoryDetail() {
    ModelAndView model = new ModelAndView("admin/edit_post");
    Posts post = new Posts();
    List<CategoryPost> categorypost = new ArrayList<>();
    categorypost = category_postDao.getAllcategory_post();
    model.getModelMap().put("post", post);
    model.getModelMap().put("url", "add");
    model.getModelMap().put("categorypost", categorypost);
    return model;
  }

  @RequestMapping(value = "/admin/post/add", method = RequestMethod.POST)
  public String add(@ModelAttribute("post") PostInsert postInsert, RedirectAttributes redirectAttributes) {
    boolean status = true;
    MultipartFile file = postInsert.getImage();
    if (file.getOriginalFilename().isEmpty()) {
      redirectAttributes.addFlashAttribute("status", "Hãy chọn ảnh trước khi tạo mới");
      return "redirect:index";
    }
    try {
      return this.doUpload(postInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    redirectAttributes.addFlashAttribute("status", "Thêm mới được dữ liệu. Vui lòng thử lại !");
    return "redirect:add";
  }

  @RequestMapping(value = "/admin/post/delete")
  public String delete(@RequestParam("postId") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = postDao.delete(id);
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

  public String doUpload(PostInsert postInsert, MultipartFile file, RedirectAttributes redirectAttributes, boolean status) throws IOException {
    Session session = sessionFactory.openSession();
    String uploadPath = context.getRealPath("") + File.separator + "resources/images/" + File.separator;
    if (!file.isEmpty()) {
      file_name = file.getOriginalFilename();
    } else {
      Posts c = (Posts) session.get(Posts.class, postInsert.getId());
      file_name = c.getImage();
    }
    Posts post = new Posts(
            postInsert.getId(),
            postInsert.getName(),
            file_name,
            postInsert.getCategoryId(),
            postInsert.getCreateTime(),
            postInsert.getStatus(),
            postInsert.getDescription(),
            postInsert.getNote()
    );
    boolean blInsert;
    if (status == true) {
      blInsert = postDao.insert(post);
    } else {
      blInsert = postDao.updatePost(post);
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
    return "redirect:edit?postId=" + post.getId() + "";
  }
}
