/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import dao.CategoryDao;
import entities.Categories;
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
public class CategoryController extends AuthenticateController{

    private CategoryDao categoryDao;

    @Autowired
    public void setCategoryDAO(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @RequestMapping(value = "/admin/category/index", method = RequestMethod.GET)
    public ModelAndView categoryIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      if (session.getAttribute("accountAdmin") == null) {
        return new ModelAndView("redirect:/admin/login");
      }
        ModelAndView model = new ModelAndView("admin/index_category");
        model.addObject("listCate", categoryDao.getAllcategory());
        return model;
    }

    @RequestMapping(value = "/admin/category/edit")
    public ModelAndView categoryDetail(@RequestParam("cateId") int cateId) {
        ModelAndView model = new ModelAndView("admin/edit_category");
        Categories cate = categoryDao.getCateById(cateId);
        model.getModelMap().put("category", cate);
        model.getModelMap().put("url", "update");
        return model;
    }

    @RequestMapping(value = "/admin/category/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("category") Categories cate, Model model) {
        boolean blInsert = categoryDao.updateCate(cate);
        if (blInsert) {
            return "redirect:index";
        } else {
            model.addAttribute("cate",
                    categoryDao.getCateById(cate.getId()));
            model.addAttribute("err", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
        }
        return "redirect:edit";
    }

    @RequestMapping(value = "/admin/category/add")
    public ModelAndView categoryDetail() {
        ModelAndView model = new ModelAndView("admin/edit_category");
        Categories cate = new Categories();
        model.getModelMap().put("category", cate);
        model.getModelMap().put("url", "add");
        return model;
    }

    @RequestMapping(value = "/admin/category/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("category") Categories cate, Model model, RedirectAttributes redirectAttributes) {
        boolean blInsert = categoryDao.insert(cate);
        if (blInsert) {
            redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thành công");
            return "redirect:index";
        } else {
            redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thất bại");
            return "redirect:add";
        }
    }

    @RequestMapping(value = "/admin/category/delete")
    public String deleteEmp(@RequestParam("cateId") int id, RedirectAttributes redirectAttributes) {
        Boolean blDelete = categoryDao.delete(id);
        if (blDelete) {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
        } else {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
        }
        return "redirect:index";
    }
}
