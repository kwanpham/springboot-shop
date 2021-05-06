/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "slides")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Slides.findAll", query = "SELECT s FROM Slides s")
  , @NamedQuery(name = "Slides.findById", query = "SELECT s FROM Slides s WHERE s.id = :id")
  , @NamedQuery(name = "Slides.findByName", query = "SELECT s FROM Slides s WHERE s.name = :name")
  , @NamedQuery(name = "Slides.findByImage", query = "SELECT s FROM Slides s WHERE s.image = :image")
  , @NamedQuery(name = "Slides.findByStatus", query = "SELECT s FROM Slides s WHERE s.status = :status")})
public class Slides implements Serializable {

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
  @Size(min = 1, max = 255)
  @Column(name = "image")
  private String image;
  @Basic(optional = false)
  @NotNull
  @Column(name = "status")
  private boolean status;
  @Size(min = 0, max = 200)
  @Column(name = "url")
  private String url;

  public Slides() {
  }

  public Slides(Integer id) {
    this.id = id;
  }

  public Slides(Integer id, String name, String image, boolean status, String url) {
    this.id = id;
    this.name = name;
    this.image = image;
    this.status = status;
    this.url = url;
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

  public boolean getStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
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
    if (!(object instanceof Slides)) {
      return false;
    }
    Slides other = (Slides) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  } 

  @Override
  public String toString() {
    return "entities.Slides[ id=" + id + " ]";
  }

}
