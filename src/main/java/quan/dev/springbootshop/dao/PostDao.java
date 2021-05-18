/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Categories;
import quan.dev.springbootshop.entities.CategoryPost;
import quan.dev.springbootshop.entities.Posts;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface PostDao {

  public List<Posts> getAllpost();

  public List<Posts> getAllpostBySearch(String name);

  public boolean insert(Posts post);

  public Posts getPostById(int id);

  public boolean updatePost(Posts post);

  public boolean delete(int id);

  public CategoryPost getCategoryPostById(int id);

  public long getTotalPostCategory(int id);

  public List<Posts> getPostByCategory(int id, Integer offset, Integer maxResults);

  public List<Posts> getCategoryPostListMenu();
  
    public List<Categories> getCategoryListMenu();
}
