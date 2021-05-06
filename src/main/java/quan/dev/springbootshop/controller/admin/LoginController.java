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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@Controller
public class LoginController {
    @Autowired
    private UsersDao usersDAO;

    public void setUsersDAO(UsersDao usersDAO) {
        this.usersDAO = usersDAO;
    }
    
    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView model = new ModelAndView("admin/login-admin");
        model.addObject("users", new Users());
        return model;
    }

    @RequestMapping(value = "/admin/loginProcess", method = RequestMethod.POST)
    public String loginProcess(RedirectAttributes redirectAttributes,HttpSession session, @ModelAttribute("users") Users users) {
        Users user = usersDAO.findByUserEmail(users);
        if (null != user) {
            session.setAttribute("accountAdmin", user.getFullname());
            return "redirect:/admin/dashboard";
        } else {
            redirectAttributes.addFlashAttribute("message", "Sai thông tin đăng nhập !");
            return "redirect:/admin/login";
        }
    }
    
  @RequestMapping(value = "/admin/logout", method = RequestMethod.GET)
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:/admin/login";
  }
//    @RequestMapping(value = "/admin/**", method = {RequestMethod.GET, RequestMethod.POST})
//    public String defaultAction(RedirectAttributes redirectAttributes,HttpSession session) {
//        if (session.getAttribute("accountAdmin")!=null) {
//            redirectAttributes.addFlashAttribute("message", "Đăng nhập thành công !");
//            return "redirect:/admin/dashboard";
//        } else {
//            redirectAttributes.addFlashAttribute("message", "Sai thông tin đăng nhập !");
//            return "redirect:/admin/login";
//        }
//    }
}
