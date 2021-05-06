/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 *
 * @author Administrator
 */
@Controller
public class AuthenticateController {
    public @ModelAttribute
  void global(ModelMap map, HttpSession session) {
    if(session.getAttribute("accountAdmin")==null){
    }else{
      
    }
  }
}
