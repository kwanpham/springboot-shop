/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;


import quan.dev.springbootshop.dao.Category_PostDao;
import quan.dev.springbootshop.entities.CategoryPost;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@Controller
public class Category_PostController {

    private Category_PostDao category_postDao;

    @Autowired
    public void setCategory_PostDAO(Category_PostDao category_postDao) {
        this.category_postDao = category_postDao;
    }

    @RequestMapping(value = "/admin/category-post/index", method = RequestMethod.GET)
    public ModelAndView category_postIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      if (session.getAttribute("accountAdmin") == null) {
        return new ModelAndView("redirect:/admin/login");
      }
        ModelAndView model = new ModelAndView("admin/index_category_post");
        model.addObject("listCatepost", category_postDao.getAllcategory_post());
        return model;
    }

    @RequestMapping(value = "/admin/category-post/edit")
    public ModelAndView category_postDetail(@RequestParam("catepotsId") int catepotsId) {
        ModelAndView model = new ModelAndView("admin/edit_category_post");
        CategoryPost catepost = category_postDao.getCatepostById(catepotsId);
        model.getModelMap().put("categorypost", catepost);
        model.getModelMap().put("url", "update");
        return model;
    }

    @RequestMapping(value = "/admin/category-post/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("categorypost") CategoryPost catepost, Model model) {
        boolean blInsert = category_postDao.updateCatepots(catepost);
        if (blInsert) {
            return "redirect:index";
        } else {
            model.addAttribute("cate",
                    category_postDao.getCatepostById(catepost.getId()));
            model.addAttribute("err", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
        }
        return "redirect:edit";
    }

    @RequestMapping(value = "/admin/category-post/add")
    public ModelAndView category_postDetail() {
        ModelAndView model = new ModelAndView("admin/edit_category_post");
        CategoryPost catepost = new CategoryPost();
        model.getModelMap().put("categorypost", catepost);
        model.getModelMap().put("url", "add");
        return model;
    }

    @RequestMapping(value = "/admin/category-post/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("categorypost") CategoryPost catepost, Model model, RedirectAttributes redirectAttributes) {
        boolean blInsert = category_postDao.insert(catepost);
        if (blInsert) {
            redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thành công");
            return "redirect:index";
        } else {
            redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thất bại");
            return "redirect:add";
        }
    }

    @RequestMapping(value = "/admin/category-post/delete")
    public String deleteEmp(@RequestParam("catepotsId") int id, RedirectAttributes redirectAttributes) {
        Boolean blDelete = category_postDao.delete(id);
        if (blDelete) {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
        } else {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
        }
        return "redirect:index";
    }
}
