/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import quan.dev.springbootshop.dao.SlidesDao;
import quan.dev.springbootshop.entities.Slides;
import quan.dev.springbootshop.entities.SlidesInsert;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Administrator
 */
@Controller
public class SlideController {

  private SlidesDao slidesDao;
  public String file_name;
  private SessionFactory sessionFactory;
  @Autowired
  ServletContext context;

  @Autowired
  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Autowired
  public void setSlidesDAO(SlidesDao slidesDao) {
    this.slidesDao = slidesDao;
  }

  @RequestMapping(value = "/admin/slide/index", method = RequestMethod.GET)
  public ModelAndView SlideIndex(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    if(session.getAttribute("accountAdmin")==null){
      return new ModelAndView("redirect:/admin/login");
    }
    ModelAndView model = new ModelAndView("admin/index_slide");
    model.addObject("listSlide", slidesDao.getAllSlide());
    return model;
  }

  @RequestMapping(value = "/admin/slide/edit")
  public ModelAndView slideDetail(@RequestParam("slideId") int slideId) {
    ModelAndView model = new ModelAndView("admin/edit_slide");
    Slides slide = slidesDao.getSlideById(slideId);
    model.getModelMap().put("slide", slide);
    model.getModelMap().put("url", "update");
    return model;
  }

  @RequestMapping(value = "/admin/slide/update", method = RequestMethod.POST)
  public String update(@ModelAttribute("slide") SlidesInsert slidesInsert, Model model, RedirectAttributes redirectAttributes) {
    MultipartFile file = slidesInsert.getImage();
    boolean status = false;
    try {
      return this.doUpload(slidesInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "redirect:edit";
  }

  @RequestMapping(value = "/admin/slide/add")
  public ModelAndView slideAdd() {
    ModelAndView model = new ModelAndView("admin/edit_slide");
    Slides slide = new Slides();
    model.getModelMap().put("slide", slide);
    model.getModelMap().put("url", "add");
    return model;
  }
//

  @RequestMapping(value = "/admin/slide/add", method = RequestMethod.POST)
  public String add(@ModelAttribute("slide") SlidesInsert slidesInsert, Model model, RedirectAttributes redirectAttributes) {
    boolean status = true;
    MultipartFile file = slidesInsert.getImage();
    if (file.getOriginalFilename().isEmpty()) {
      redirectAttributes.addFlashAttribute("status", "Hãy chọn ảnh trước khi tạo mới sản phẩm");
      return "redirect:add";
    }
    try {
      return this.doUpload(slidesInsert, file, redirectAttributes, status);
    } catch (Exception e) {
      e.printStackTrace();
    }
    redirectAttributes.addFlashAttribute("status", "Thêm mới được dữ liệu. Vui lòng thử lại !");
    return "redirect:add";
  }

  @RequestMapping(value = "/admin/slide/delete")
  public String delete(@RequestParam("slideId") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = slidesDao.delete(id);
    if (blDelete) {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
    } else {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
    }
    return "redirect:index";
  }

  public String doUpload(SlidesInsert slidesInsert, MultipartFile file, RedirectAttributes redirectAttributes, boolean status) throws IOException {
    Session session = sessionFactory.openSession();
    String uploadPath = context.getRealPath("") + File.separator + "resources/images/" + File.separator;
    if (!file.isEmpty()) {
      file_name = file.getOriginalFilename();
    } else {
      Slides c = (Slides) session.get(Slides.class, slidesInsert.getId());
      file_name = c.getImage();
    }
    Slides slide = new Slides(
            slidesInsert.getId(),
            slidesInsert.getName(),
            file_name,
            slidesInsert.getStatus(),
            slidesInsert.getUrl()
    );
    boolean blInsert;
    if (status == true) {
      blInsert = slidesDao.insert(slide);
    } else {
      blInsert = slidesDao.updateslide(slide);
    }
    if (blInsert) {
      if (!file.getOriginalFilename().isEmpty()) {
        byte[] bytes = file.getBytes();
        FileCopyUtils.copy(bytes, new File(uploadPath + file.getOriginalFilename()));
      }
      redirectAttributes.addFlashAttribute("status", "Thêm mới dữ liệu thành công");
      return "redirect:index";
    } else {
      if (status == true) {
      redirectAttributes.addFlashAttribute("status", "Không thêm được dữ liệu. Vui lòng thử lại !");
      return "redirect:add";
    }else{
     redirectAttributes.addFlashAttribute("status", "Không cập nhật được dữ liệu. Vui lòng thử lại !");
      return "redirect:edit?productId=" + slide.getId() + "";
    }
    }
  }
}
