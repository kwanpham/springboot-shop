/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface CategoryDao {

  public List<Categories> getAllcategory();
  public boolean insert(Categories category);
  public Categories getCateById(int id);
  public boolean updateCate(Categories category);
  public boolean delete(int id);
}
