/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author thang
 */
@Entity
@Table(name = "orderdetail")
@NamedQueries({
  @NamedQuery(name = "Orderdetail.findAll", query = "SELECT o FROM Orderdetails o")})
public class Orderdetails implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "order_details_id")
  private Integer orderDetailsId;
  @Column(name = "order_id")
  private Integer orderId;
  @Column(name = "product_id")
  private Integer productId;
  @Size(max = 200)
  @Column(name = "product_name")
  private String productName;
  @Size(max = 250)
  @Column(name = "images")
  private String images;
  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
  @Column(name = "price_product")
  private BigDecimal priceProduct;
  @Column(name = "quanlity")
  private Integer quanlity;

  public Orderdetails() {
  }

  public Orderdetails(Integer orderDetailsId) {
    this.orderDetailsId = orderDetailsId;
  }

  public Integer getOrderDetailsId() {
    return orderDetailsId;
  }

  public void setOrderDetailsId(Integer orderDetailsId) {
    this.orderDetailsId = orderDetailsId;
  }

  public Integer getOrderId() {
    return orderId;
  }

  public void setOrderId(Integer orderId) {
    this.orderId = orderId;
  }

  public String getImages() {
    return images;
  }

  public void setImages(String images) {
    this.images = images;
  }

  public BigDecimal getPriceProduct() {
    return priceProduct;
  }

  public void setPriceProduct(BigDecimal priceProduct) {
    this.priceProduct = priceProduct;
  }

  public Integer getQuanlity() {
    return quanlity;
  }

  public void setQuanlity(Integer quanlity) {
    this.quanlity = quanlity;
  }

  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public Integer getProductId() {
    return productId;
  }

  public void setProductId(Integer productId) {
    this.productId = productId;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (orderDetailsId != null ? orderDetailsId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Orderdetails)) {
      return false;
    }
    Orderdetails other = (Orderdetails) object;
    if ((this.orderDetailsId == null && other.orderDetailsId != null) || (this.orderDetailsId != null && !this.orderDetailsId.equals(other.orderDetailsId))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.Orderdetails[ orderDetailsId=" + orderDetailsId + " ]";
  }

}
