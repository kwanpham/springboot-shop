/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import quan.dev.springbootshop.dao.ConfigHomeDao;
import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.ConfigHome;
import quan.dev.springbootshop.entities.Posts;
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
public class ConfigHomeController {

  private ConfigHomeDao configHome;

  @Autowired
  public void setConfigHomeDAO(ConfigHomeDao configHome) {
    this.configHome = configHome;
  }

  @RequestMapping(value = "/admin/config-home/view", method = RequestMethod.GET)
  public ModelAndView getConfigHome(HttpSession session) {
    if (session.getAttribute("accountAdmin") == null) {
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/config_home_index");
    ConfigHome config = configHome.getConfigHome(1);
    model.getModelMap().put("config", config);

    //get category
    List<Categories> category_config = configHome.getCategoryListHome();
    model.addObject("category_config", category_config);

    List<CategoryPost> post_config = configHome.getCategoryPostListHome();
    model.addObject("post_config", post_config);
    return model;
  }

  @RequestMapping(value = "/admin/config-home/update", method = RequestMethod.POST)
  public String postUpdateConfigHome(ConfigHome config, RedirectAttributes redirectAttributes) {
    boolean blInsert = configHome.updateConfigHome(config);
    if (blInsert) {
      redirectAttributes.addFlashAttribute("status_ok", "Ch???nh s???a d??? li???u th??nh c??ng");
      return "redirect:view";
    } else {
      redirectAttributes.addFlashAttribute("status", "Ch???nh s???a d??? li???u th???t b???i");
      return "redirect:view";
    }
  }
}
