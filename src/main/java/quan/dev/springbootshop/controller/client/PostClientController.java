/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.client;

import dao.PostDao;
import entities.Categories;
import entities.CategoryPost;
import entities.Posts;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author thang
 */
@Controller
public class PostClientController extends MenuTemplateController{

  private PostDao postDao;

  @Autowired
  public void setPostDao(PostDao postDao) {
    this.postDao = postDao;
  }

  @RequestMapping(value = "/blogs/{id}", method = RequestMethod.GET)
  public ModelAndView detailCategoryPost(@PathVariable("id") int id, Integer offset, Integer maxResult) {
    ModelAndView model = new ModelAndView("client/category_post_detail");
    List<Posts> post = postDao.getPostByCategory(id, offset, maxResult);
    model.getModelMap().put("post", post);
    model.getModelMap().put("count_size", post.size());

    model.getModelMap().put("ids", id);
    model.addObject("count", postDao.getTotalPostCategory(id));

    model.getModelMap().put("cateid", postDao.getCategoryPostById(id));

    List<Posts> catespost = postDao.getCategoryPostListMenu();
    model.getModelMap().put("catespost", catespost);

    List<Categories> cate_product = postDao.getCategoryListMenu();
    model.getModelMap().put("cate_product", cate_product);

    return model;
  }

  @RequestMapping(value = "/blogs/details/{id}", method = RequestMethod.GET)
  public ModelAndView detailBlogs(@PathVariable("id") int id) {
    ModelAndView model = new ModelAndView("client/blog_details");
    Posts post = postDao.getPostById(id);
    model.getModelMap().put("post", post);

    List<Posts> catespost = postDao.getCategoryPostListMenu();
    model.getModelMap().put("catespost", catespost);
    model.getModelMap().put("size_cate_danhmuc", catespost.size());

    List<Categories> cate_product = postDao.getCategoryListMenu();
    model.getModelMap().put("cate_product", cate_product);

    model.getModelMap().put("cateid", postDao.getCategoryPostById(post.getId()));

    return model;
  }
}
