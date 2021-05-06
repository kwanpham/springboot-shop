/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.CategoryPost;
import entities.ConfigHome;
import entities.Posts;
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
