/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.dao;

import quan.dev.springbootshop.entities.Slides;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface SlidesDao {
  List<Slides> getAllSlide();
  public boolean insert(Slides slide);
  public Slides getSlideById(int id);
  public boolean updateslide(Slides slide);
  public boolean delete(int id);
}
