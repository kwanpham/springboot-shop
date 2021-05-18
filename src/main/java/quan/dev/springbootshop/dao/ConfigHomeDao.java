/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.ConfigHome;
import quan.dev.springbootshop.entities.Posts;
import java.util.List;

/**
 *
 * @author thang
 */
public interface ConfigHomeDao {

  public ConfigHome getConfigHome(int id);

  public boolean updateConfigHome(ConfigHome config);

  public List<Categories> getCategoryListHome();

  public List<CategoryPost> getCategoryPostListHome();
}
