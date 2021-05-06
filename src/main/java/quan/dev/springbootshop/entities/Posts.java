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
 * @author admin
 */
@Entity
@Table(name = "posts")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Posts.findAll", query = "SELECT p FROM Posts p"),
  @NamedQuery(name = "Posts.findById", query = "SELECT p FROM Posts p WHERE p.id = :id"),
  @NamedQuery(name = "Posts.findByName", query = "SELECT p FROM Posts p WHERE p.name = :name"),
  @NamedQuery(name = "Posts.findByImage", query = "SELECT p FROM Posts p WHERE p.image = :image"),
  @NamedQuery(name = "Posts.findByDescription", query = "SELECT p FROM Posts p WHERE p.description = :description"),
  @NamedQuery(name = "Posts.findByCategoryId", query = "SELECT p FROM Posts p WHERE p.categoryId = :categoryId"),
  @NamedQuery(name = "Posts.findByCreateTime", query = "SELECT p FROM Posts p WHERE p.createTime = :createTime"),
  @NamedQuery(name = "Posts.findByStatus", query = "SELECT p FROM Posts p WHERE p.status = :status")})
public class Posts implements Serializable {

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
  @Column(name = "image")
  private String image;
  @Size(max = 65535)
  @Column(name = "description")
  private String description;
  @Basic(optional = false)
  @NotNull
  @Column(name = "category_id")
  private int categoryId;
  @Basic(optional = false)
  @Column(name = "create_time", updatable = false)
  @Temporal(TemporalType.TIMESTAMP)
  private Date createTime;
  @Basic(optional = false)
  @NotNull
  @Column(name = "status")
  private boolean status;
  @Column(name = "note")
  private String note;

  public Posts() {
  }

  public Posts(Integer id) {
    this.id = id;
  }

  public Posts(Integer id, String name, String image, int categoryId, Date createTime, boolean status, String description, String note) {
    this.id = id;
    this.name = name;
    this.image = image;
    this.categoryId = categoryId;
    this.createTime = createTime;
    this.status = status;
    this.description = description;
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

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public int getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(int categoryId) {
    this.categoryId = categoryId;
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

  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
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
    if (!(object instanceof Posts)) {
      return false;
    }
    Posts other = (Posts) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.Posts[ id=" + id + " ]";
  }

}
