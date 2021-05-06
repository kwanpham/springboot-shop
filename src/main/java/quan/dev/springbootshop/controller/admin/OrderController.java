/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.controller.admin;

import dao.OrderDao;
import entities.Config;
import entities.Orderdetails;
import entities.Orders;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author thang
 */
@Controller
public class OrderController {

  private OrderDao orderDao;

  @Autowired
  public void setCategoryDAO(OrderDao orderDao) {
    this.orderDao = orderDao;
  }
  //hiển thị list danh sách đơn hàng

  @RequestMapping(value = "/admin/order/index", method = RequestMethod.GET)
  public String orderIndex(Model model, Integer offset, Integer maxResult, HttpSession session) {
    if (session.getAttribute("accountAdmin") == null) {
      return "redirect:/admin/login";
    }
    List<Orders> list = orderDao.getAllOrder(offset, maxResult);
    model.addAttribute("listOrder", list);
    model.addAttribute("offset", offset);
    model.addAttribute("count", orderDao.getTotalOrder());
    return "admin/index_order";
  }
  //xem chi tiết đơn hàng

  @RequestMapping(value = "/admin/order/view")
  public String orderDetail(@RequestParam("id") int order_id, Model model) {
    model.addAttribute("m", orderDao.viewOrderDetails(order_id));
    List<Orderdetails> list = orderDao.detailsProductOrder(order_id);
    model.addAttribute("listDetails", list);

    Config configs = orderDao.getConfig(1);
    model.asMap().put("configs", configs);
    return "admin/view_order";
  }
  //xác thực đơn hàng

  @RequestMapping(value = "/admin/order/confirm-order")
  public String confirmOrder(@RequestParam("id") int order_id, RedirectAttributes redirectAttributes) {
    Boolean blConfirm = orderDao.confirmOrder(order_id);
    if (blConfirm) {
      redirectAttributes.addFlashAttribute("status_order", "Xác thực đơn hàng thành công");
    } else {
      redirectAttributes.addFlashAttribute("status_order_error", "Có lỗi xảy ra trong quá trình xác thực,vui lòng thử lại");
    }
    return "redirect:view?id=" + order_id;
  }
  //hủy đơn hàng

  @RequestMapping(value = "/admin/order/cancel-order")
  public String cancelOrder(@RequestParam("id") int order_id, RedirectAttributes redirectAttributes) {
    Boolean blConfirm = orderDao.cancelOrder(order_id);
    if (blConfirm) {
      redirectAttributes.addFlashAttribute("status_order", "Hủy đơn hàng thành công");
    } else {
      redirectAttributes.addFlashAttribute("status_order_error", "Có lỗi xảy ra trong quá trình hủy đơn hàng,vui lòng thử lại");
    }
    return "redirect:view?id=" + order_id;
  }

  @RequestMapping(value = "/admin/order/delete")
  public String deleteOrder(@RequestParam("id") int id, RedirectAttributes redirectAttributes) {
    Boolean blDelete = orderDao.deleteOrder(id);
    if (blDelete) {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thành công");
    } else {
      redirectAttributes.addFlashAttribute("status", "Xóa dữ liệu thất bại");
    }
    return "redirect:index";
  }

}
