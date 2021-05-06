/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Users;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface UsersDao {
  Users findByUserEmail(Users user);
  List<Users> getAllUser();
  public boolean insert(Users user);
  public Users getUserById(int id);
  public boolean updateuser(Users user);
  public boolean delete(int id);
}
