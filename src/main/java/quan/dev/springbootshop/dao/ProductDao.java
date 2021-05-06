/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import entities.Categories;
import entities.Products;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ProductDao {

  public List<Products> getAllproduct();
  public List<Products> getAllproductBySearch(String name);
  public boolean insert(Products product);
  public Products getProductById(int id);
  public Categories getCategoryById(int id);
  public boolean updateProduct(Products product);
  public boolean delete(int id);
  
  public long getTotalProductCategory(int id);
  public List<Products> getProductByCategory(int id,Integer offset, Integer maxResults);
  public List<Categories> getCategoryListMenu();
  
    public List<Products> getRelatedProducts(int id);
}
