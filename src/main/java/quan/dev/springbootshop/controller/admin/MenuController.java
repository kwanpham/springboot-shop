/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import quan.dev.springbootshop.dao.MenuDao;
import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.Menus;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author thang
 */
@Controller
public class MenuController {

  private MenuDao menuDao;

  @Autowired
  public void setMenuDAO(MenuDao menuDao) {
    this.menuDao = menuDao;
  }

  //hiển thị list danh sách đơn hàng
  @RequestMapping(value = "/admin/menu/index", method = RequestMethod.GET)
  public String menuIndex(Model model, Integer offset, Integer maxResult) {
    List<Menus> list = menuDao.getAllMenu(offset, maxResult);
    model.addAttribute("listMenu", list);
    model.addAttribute("offset", offset);
    model.addAttribute("count", menuDao.getTotalMenu());
    return "admin/index_menu";
  }

  @RequestMapping(value = "/admin/menu/add", method = RequestMethod.GET)
  public ModelAndView getMenuDetail() {
    ModelAndView model = new ModelAndView("admin/form_menu");
    Menus mẹnu = new Menus();
    model.getModelMap().put("menu", mẹnu);
    model.getModelMap().put("url", "add");

    List<Menus> list = menuDao.getDataMenuParents();
    model.addObject("listMenuParents", list);
    return model;
  }

  @RequestMapping(value = "/admin/menu/add", method = RequestMethod.POST)
  public String postMenuDetail(Menus menu, RedirectAttributes redirectAttributes) {
    boolean blInsert = menuDao.insertMenu(menu);
    if (blInsert) {
      redirectAttributes.addFlashAttribute("statusadd", "Thêm mới dữ liệu thành công");
      return "redirect:index";
    } else {
      redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thất bại");
      return "redirect:add";
    }
  }

  @RequestMapping(value = "/admin/menu/edit", method = RequestMethod.GET)
  public ModelAndView menuDetail(@RequestParam("id") int id) {
    ModelAndView model = new ModelAndView("admin/form_menu");
    Menus menu = menuDao.getMenuById(id);
    model.getModelMap().put("menu", menu);
    model.getModelMap().put("url", "update");
    List<Menus> list = menuDao.getDataMenuParents();
    model.addObject("listMenuParents", list);
    return model;
  }

  @RequestMapping(value = "/admin/menu/update", method = RequestMethod.POST)
  public String updateMenu(@ModelAttribute("menu") Menus menu, Model model, RedirectAttributes redirectAttributes) {
    boolean blUp = menuDao.updateMenu(menu);
    if (blUp) {
      redirectAttributes.addFlashAttribute("status", "Chỉnh sửa dữ liệu thành công");
      return "redirect:index";
    } else {
      model.addAttribute("menu", menuDao.getMenuById(menu.getMenuId()));
      model.addAttribute("err", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
    }
    return "redirect:edit";
  }

  @RequestMapping(value = "/admin/menu/ajaxgetdatacategory", method = RequestMethod.GET)
  @ResponseBody
  public List<Categories> ajaxGetDataCategory(Model model) {
    List<Categories> list = menuDao.ajaxGetDataCategory();
    return list;
  }

  @RequestMapping(value = "/admin/menu/ajaxgetdatacatepost", method = RequestMethod.GET)
  @ResponseBody
  public List<CategoryPost> ajaxGetDataPost(Model model) {
    List<CategoryPost> list = menuDao.ajaxGetDataCategoryPost();
    return list;
  }

  @RequestMapping(value = "/admin/menu/delete")
  public String deleteMenu(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = menuDao.deleteMenu(id);
    if (blDelete) {
      redirectAttributes.addFlashAttribute("status_delete", "Xóa dữ liệu thành công");
    } else {
      redirectAttributes.addFlashAttribute("status_delete", "Xóa dữ liệu thất bại");
    }
    return "redirect:index";
  }
}
