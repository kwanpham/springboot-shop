/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author admin
 */
public class PostInsert {

  private Integer id;
  private String name;
  private String description;
  private String note;
  private Date createTime;
  private boolean status;
  private int categoryId;
  private MultipartFile image;

  public PostInsert() {
  }

  public PostInsert(Integer id, String name, String description, Date createTime, boolean status, int categoryId, MultipartFile image, String note) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.createTime = createTime;
    this.status = status;
    this.categoryId = categoryId;
    this.image = image;
    this.note = note;
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

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }

  public boolean getStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

  public int getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(int categoryId) {
    this.categoryId = categoryId;
  }

  public MultipartFile getImage() {
    return image;
  }

  public void setImage(MultipartFile image) {
    this.image = image;
  }

  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }

}
