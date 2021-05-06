/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import dao.UsersDao;
import entities.Users;
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
public class UserController {

  private UsersDao usersDao;

  @Autowired
  public void setUsersDAO(UsersDao usersDao) {
    this.usersDao = usersDao;
  }

  @RequestMapping(value = "/admin/user/index", method = RequestMethod.GET)
  public ModelAndView UserIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    if (session.getAttribute("accountAdmin") == null) {
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/index_user");
    model.addObject("listUser", usersDao.getAllUser());
    return model;
  }

  @RequestMapping(value = "/admin/user/edit")
  public ModelAndView userDetail(@RequestParam("userId") int userId) {
    ModelAndView model = new ModelAndView("admin/edit_user");
    Users user = usersDao.getUserById(userId);
    model.getModelMap().put("user", user);
    model.getModelMap().put("url", "update");
    return model;
  }

  @RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
  public String update(@ModelAttribute("user") Users user, Model model) {
    boolean blInsert = usersDao.updateuser(user);
    if (blInsert) {
      return "redirect:index";
    } else {
      model.addAttribute("user",
              usersDao.getUserById(user.getId()));
      model.addAttribute("err", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
    }
    return "redirect:edit";
  }
//

  @RequestMapping(value = "/admin/user/add")
  public ModelAndView categoryDetail() {
    ModelAndView model = new ModelAndView("admin/edit_user");
    Users cate = new Users();
    model.getModelMap().put("user", cate);
    model.getModelMap().put("url", "add");
    return model;
  }
//

  @RequestMapping(value = "/admin/user/add", method = RequestMethod.POST)
  public String add(@ModelAttribute("category") Users user, Model model, RedirectAttributes redirectAttributes) {
    boolean blInsert = usersDao.insert(user);
    if (blInsert) {
      redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thành công");
      return "redirect:index";
    } else {
      redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thất bại");
      return "redirect:add";
    }
  }

  @RequestMapping(value = "/admin/user/delete")
  public String delete(@RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = usersDao.delete(id);
    if (blDelete) {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
    } else {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
    }
    return "redirect:index";
  }
}
