/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Administrator
 */
public class SlidesInsert {

  private Integer id;
  private String name;
  private String url;
  private boolean status;
  private MultipartFile image;

  public SlidesInsert() {
  }

  public SlidesInsert(Integer id, String name, boolean status, MultipartFile image, String url) {
    this.id = id;
    this.name = name;
    this.status = status;
    this.image = image;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public boolean getStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

  public MultipartFile getImage() {
    return image;
  }

  public void setImage(MultipartFile image) {
    this.image = image;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

}
