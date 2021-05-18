/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import quan.dev.springbootshop.dao.ConfigDao;
import quan.dev.springbootshop.entities.Config;
import quan.dev.springbootshop.entities.Menus;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author thang
 */
@Controller
public class ConfigController {

  private ConfigDao config;

  @Autowired
  public void setConfigDAO(ConfigDao config) {
    this.config = config;
  }
  
    @RequestMapping(value = "/admin/config/view", method = RequestMethod.GET)
  public ModelAndView getConfig(HttpSession session) {
    if(session.getAttribute("accountAdmin")==null){
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/config_index");
    Config configs = config.getConfig(1);
    model.getModelMap().put("configs", configs);

    //get category
    List<Menus> menu_config = config.getMenuConfig();
    model.addObject("menu_config", menu_config);
    return model;
  }

  @RequestMapping(value = "/admin/config/update", method = RequestMethod.POST)
  public String postUpdateConfig(Config configs, RedirectAttributes redirectAttributes) {
    boolean blInsert = config.updateConfig(configs);
    if (blInsert) {
      redirectAttributes.addFlashAttribute("status_ok", "Chỉnh sửa dữ liệu thành công");
      return "redirect:view";
    } else {
      redirectAttributes.addFlashAttribute("status", "Chỉnh sửa dữ liệu thất bại");
      return "redirect:view";
    }
  }
}
