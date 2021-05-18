/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Config;
import quan.dev.springbootshop.entities.Orderdetails;
import java.util.List;
import quan.dev.springbootshop.entities.Orders;

/**
 *
 * @author thang
 */
public interface OrderDao {
  public List<Orders> getAllOrder(Integer offset, Integer maxResults);
  public long getTotalOrder();
  public Orders viewOrderDetails(int id);
  public Orders getOrderById(int id);
  public List<Orderdetails> detailsProductOrder(int id);
  public boolean confirmOrder(int id);
  public boolean cancelOrder(int id);
  public boolean deleteOrder(int id);
  public Config getConfig(int id);
}
