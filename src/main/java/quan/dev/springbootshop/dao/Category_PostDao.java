/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;


import quan.dev.springbootshop.entities.CategoryPost;

import java.util.List;

/**
 * @author Administrator
 */
public interface Category_PostDao {

    public List<CategoryPost> getAllcategory_post();

    public boolean insert(CategoryPost categorypost);

    public CategoryPost getCatepostById(int id);

    public boolean updateCatepots(CategoryPost categorypost);

    public boolean delete(int id);
}
