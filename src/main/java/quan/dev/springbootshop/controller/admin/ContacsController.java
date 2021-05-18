/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;


import quan.dev.springbootshop.controller.client.MenuTemplateController;
import quan.dev.springbootshop.dao.ContacsDao;
import quan.dev.springbootshop.entities.Contacs;
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
public class ContacsController extends MenuTemplateController {

    private ContacsDao contacsDao;

    @Autowired
    public void setUsersDAO(ContacsDao contacsDao) {
        this.contacsDao = contacsDao;
    }

    @RequestMapping(value = "/admin/contact/index", method = RequestMethod.GET)
    public ModelAndView ContacIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
      if(session.getAttribute("accountAdmin")==null){
      return new ModelAndView("redirect:/admin/login");
    }
        ModelAndView model = new ModelAndView("admin/index_contact");
        model.addObject("listContac", contacsDao.getAllContac());
        return model;
    }

    @RequestMapping(value = "/admin/contact/edit")
    public ModelAndView userDetail(@RequestParam("contacId") int contacId) {
        ModelAndView model = new ModelAndView("admin/edit_contact");
        Contacs contacs = contacsDao.getContacById(contacId);
        model.getModelMap().put("contact", contacs);
        model.getModelMap().put("url", "update");
        return model;
    }

    @RequestMapping(value = "/contact")
    public ModelAndView contactDetail() {
        ModelAndView model = new ModelAndView("client/contact");
        Contacs contacs = new Contacs();
        model.getModelMap().put("contact", contacs);
        model.getModelMap().put("url", "contactInsert");
        return model;
    }
//

    @RequestMapping(value = "/shop/contactInsert", method = RequestMethod.POST)
    public String add(@ModelAttribute("contact") Contacs contacs, Model model, RedirectAttributes redirectAttributes) {
        boolean blInsert = contacsDao.insert(contacs);
        if (blInsert) {
            redirectAttributes.addFlashAttribute("status", "Cảm ơn bạn đã liên hệ.Chúng tôi sẽ liên hệ lại bạn sớm nhất");
        } else {
            redirectAttributes.addFlashAttribute("status", "Có lỗi xảy ra vui lòng thử lại");
        }
        return "redirect:/contact";

    }

    @RequestMapping(value = "/admin/contact/delete")
    public String delete(@RequestParam("contacId") int id, RedirectAttributes redirectAttributes) {
        Boolean blDelete = contacsDao.delete(id);
        if (blDelete) {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
        } else {
            redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
        }
        return "redirect:index";
    }
}
