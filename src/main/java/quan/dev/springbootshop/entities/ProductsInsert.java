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
 * @author Administrator
 */
public class ProductsInsert {

  private Integer id;
  private String name;
  private float price;
  private float priceSale;
  private int quantity;
  private String description;
  private String code;
  private int averagePoint;
  private Date createTime;
  private boolean status;
  private int categoryId;
  private MultipartFile image;

  public ProductsInsert() {
  }

  public ProductsInsert(Integer id, String name, float price, float priceSale, int quantity, String description, int averagePoint, Date createTime, boolean status, int categoryId, MultipartFile image, String code) {
    this.id = id;
    this.name = name;
    this.priceSale = priceSale;
    this.price = price;
    this.quantity = quantity;
    this.description = description;
    this.averagePoint = averagePoint;
    this.createTime = createTime;
    this.status = status;
    this.categoryId = categoryId;
    this.image = image;
    this.code = code;
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

  public float getPrice() {
    return price;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public String getDescription() {
    return description;
  }

  public float getPriceSale() {
    return priceSale;
  }

  public void setPriceSale(float priceSale) {
    this.priceSale = priceSale;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public int getAveragePoint() {
    return averagePoint;
  }

  public void setAveragePoint(int averagePoint) {
    this.averagePoint = averagePoint;
  }

  public Date getCreateTime() {
    return createTime;
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

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
