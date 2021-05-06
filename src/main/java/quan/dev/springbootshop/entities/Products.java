/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author thang
 */
@Entity
@Table(name = "products")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Products.findAll", query = "SELECT p FROM Products p"),
  @NamedQuery(name = "Products.findById", query = "SELECT p FROM Products p WHERE p.id = :id"),
  @NamedQuery(name = "Products.findByName", query = "SELECT p FROM Products p WHERE p.name = :name"),
  @NamedQuery(name = "Products.findByPrice", query = "SELECT p FROM Products p WHERE p.price = :price"),
  @NamedQuery(name = "Products.findByPriceSale", query = "SELECT p FROM Products p WHERE p.priceSale = :priceSale"),
  @NamedQuery(name = "Products.findByQuantity", query = "SELECT p FROM Products p WHERE p.quantity = :quantity"),
  @NamedQuery(name = "Products.findByAveragePoint", query = "SELECT p FROM Products p WHERE p.averagePoint = :averagePoint"),
  @NamedQuery(name = "Products.findByImage", query = "SELECT p FROM Products p WHERE p.image = :image"),
  @NamedQuery(name = "Products.findByCreateTime", query = "SELECT p FROM Products p WHERE p.createTime = :createTime"),
  @NamedQuery(name = "Products.findByStatus", query = "SELECT p FROM Products p WHERE p.status = :status"),
  @NamedQuery(name = "Products.findByCategoryId", query = "SELECT p FROM Products p WHERE p.categoryId = :categoryId"),
  @NamedQuery(name = "Products.findByCode", query = "SELECT p FROM Products p WHERE p.code = :code")})
public class Products implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "id")
  private Integer id;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 255)
  @Column(name = "name")
  private String name;
  @Basic(optional = false)
  @NotNull
  @Column(name = "price")
  private float price;
  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
  @Column(name = "price_sale")
  private Float priceSale;
  @Basic(optional = false)
  @NotNull
  @Column(name = "quantity")
  private int quantity;
  @Lob
  @Size(max = 65535)
  @Column(name = "description")
  private String description;
  @Basic(optional = false)
  @NotNull
  @Column(name = "average_point")
  private int averagePoint;
  @Size(max = 255)
  @Column(name = "image")
  private String image;
  @Column(name = "create_time", updatable = false)
  @Temporal(TemporalType.TIMESTAMP)
  private Date createTime;
  @Basic(optional = false)
  @NotNull
  @Column(name = "status")
  private boolean status;
  @Basic(optional = false)
  @NotNull
  @Column(name = "category_id")
  private int categoryId;
  @Size(max = 255)
  @Column(name = "code")
  private String code;

  public Products() {
  }

  public Products(Integer id) {
    this.id = id;
  }

public Products(Integer id, String name, float price,float priceSale, int quantity, int averagePoint, String image, Date createTime, boolean status, int categoryId, String description, String code) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.priceSale = priceSale;
    this.quantity = quantity;
    this.averagePoint = averagePoint;
    this.image = image;
    this.createTime = createTime;
    this.status = status;
    this.categoryId = categoryId;
    this.description = description;
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

  public Float getPriceSale() {
    return priceSale;
  }

  public void setPriceSale(Float priceSale) {
    this.priceSale = priceSale;
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

  public void setDescription(String description) {
    this.description = description;
  }

  public int getAveragePoint() {
    return averagePoint;
  }

  public void setAveragePoint(int averagePoint) {
    this.averagePoint = averagePoint;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
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

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (id != null ? id.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Products)) {
      return false;
    }
    Products other = (Products) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.Products[ id=" + id + " ]";
  }
  
}
