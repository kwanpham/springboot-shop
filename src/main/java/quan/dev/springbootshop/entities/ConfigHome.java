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
import javax.validation.constraints.Size;

/**
 *
 * @author thang
 */
@Entity
@Table(name = "config_home")
@NamedQueries({
  @NamedQuery(name = "ConfigHome.findAll", query = "SELECT c FROM ConfigHome c")})
public class ConfigHome implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "hid")
  private Integer hid;
  @Column(name = "on_colletion_1")
  private Boolean onColletion1;
  @Size(max = 150)
  @Column(name = "title_collection_1")
  private String titleCollection1;
  @Size(max = 200)
  @Column(name = "url_collection_1")
  private String urlCollection1;
  @Column(name = "collection_list_1")
  private Integer collectionList1;
  @Column(name = "on_colletion_2")
  private Boolean onColletion2;
  @Size(max = 150)
  @Column(name = "title_collection_2")
  private String titleCollection2;
  @Size(max = 200)
  @Column(name = "url_collection_2")
  private String urlCollection2;
  @Column(name = "collection_list_2")
  private Integer collectionList2;
  @Column(name = "on_colletion_3")
  private Boolean onColletion3;
  @Size(max = 150)
  @Column(name = "title_collection_3")
  private String titleCollection3;
  @Size(max = 200)
  @Column(name = "url_collection_3")
  private String urlCollection3;
  @Column(name = "collection_list_3")
  private Integer collectionList3;
  @Column(name = "on_blog")
  private Boolean onBlog;
  @Size(max = 150)
  @Column(name = "title_blog")
  private String titleBlog;
  @Size(max = 200)
  @Column(name = "url_blog")
  private String urlBlog;
  @Column(name = "blog_list")
  private Integer blogList;
  @Column(name = "on_colletion_4")
  private Boolean onColletion4;
  @Size(max = 150)
  @Column(name = "title_collection_4")
  private String titleCollection4;
  @Size(max = 200)
  @Column(name = "url_collection_4")
  private String urlCollection4;
  @Column(name = "collection_list_4")
  private Integer collectionList4;
  @Column(name = "on_colletion_5")
  private Boolean onColletion5;
  @Size(max = 150)
  @Column(name = "title_collection_5")
  private String titleCollection5;
  @Size(max = 200)
  @Column(name = "url_collection_5")
  private String urlCollection5;
  @Column(name = "collection_list_5")
  private Integer collectionList5;
  @Column(name = "on_colletion_6")
  private Boolean onColletion6;
  @Size(max = 150)
  @Column(name = "title_collection_6")
  private String titleCollection6;
  @Size(max = 200)
  @Column(name = "url_collection_6")
  private String urlCollection6;
  @Column(name = "collection_list_6")
  private Integer collectionList6;

  public ConfigHome() {
  }

  public ConfigHome(Integer hid) {
    this.hid = hid;
  }

  public Integer getHid() {
    return hid;
  }

  public void setHid(Integer hid) {
    this.hid = hid;
  }

  public Boolean getOnColletion1() {
    return onColletion1;
  }

  public void setOnColletion1(Boolean onColletion1) {
    this.onColletion1 = onColletion1;
  }

  public String getTitleCollection1() {
    return titleCollection1;
  }

  public void setTitleCollection1(String titleCollection1) {
    this.titleCollection1 = titleCollection1;
  }

  public String getUrlCollection1() {
    return urlCollection1;
  }

  public void setUrlCollection1(String urlCollection1) {
    this.urlCollection1 = urlCollection1;
  }

  public Integer getCollectionList1() {
    return collectionList1;
  }

  public void setCollectionList1(Integer collectionList1) {
    this.collectionList1 = collectionList1;
  }

  public Boolean getOnColletion2() {
    return onColletion2;
  }

  public void setOnColletion2(Boolean onColletion2) {
    this.onColletion2 = onColletion2;
  }

  public String getTitleCollection2() {
    return titleCollection2;
  }

  public void setTitleCollection2(String titleCollection2) {
    this.titleCollection2 = titleCollection2;
  }

  public String getUrlCollection2() {
    return urlCollection2;
  }

  public void setUrlCollection2(String urlCollection2) {
    this.urlCollection2 = urlCollection2;
  }

  public Integer getCollectionList2() {
    return collectionList2;
  }

  public void setCollectionList2(Integer collectionList2) {
    this.collectionList2 = collectionList2;
  }

  public Boolean getOnColletion3() {
    return onColletion3;
  }

  public void setOnColletion3(Boolean onColletion3) {
    this.onColletion3 = onColletion3;
  }

  public String getTitleCollection3() {
    return titleCollection3;
  }

  public void setTitleCollection3(String titleCollection3) {
    this.titleCollection3 = titleCollection3;
  }

  public String getUrlCollection3() {
    return urlCollection3;
  }

  public void setUrlCollection3(String urlCollection3) {
    this.urlCollection3 = urlCollection3;
  }

  public Integer getCollectionList3() {
    return collectionList3;
  }

  public void setCollectionList3(Integer collectionList3) {
    this.collectionList3 = collectionList3;
  }

  public Boolean getOnBlog() {
    return onBlog;
  }

  public void setOnBlog(Boolean onBlog) {
    this.onBlog = onBlog;
  }

  public String getTitleBlog() {
    return titleBlog;
  }

  public void setTitleBlog(String titleBlog) {
    this.titleBlog = titleBlog;
  }

  public String getUrlBlog() {
    return urlBlog;
  }

  public void setUrlBlog(String urlBlog) {
    this.urlBlog = urlBlog;
  }

  public Integer getBlogList() {
    return blogList;
  }

  public void setBlogList(Integer blogList) {
    this.blogList = blogList;
  }

  public Boolean getOnColletion4() {
    return onColletion4;
  }

  public void setOnColletion4(Boolean onColletion4) {
    this.onColletion4 = onColletion4;
  }

  public String getTitleCollection4() {
    return titleCollection4;
  }

  public void setTitleCollection4(String titleCollection4) {
    this.titleCollection4 = titleCollection4;
  }

  public String getUrlCollection4() {
    return urlCollection4;
  }

  public void setUrlCollection4(String urlCollection4) {
    this.urlCollection4 = urlCollection4;
  }

  public Integer getCollectionList4() {
    return collectionList4;
  }

  public void setCollectionList4(Integer collectionList4) {
    this.collectionList4 = collectionList4;
  }

  public Boolean getOnColletion5() {
    return onColletion5;
  }

  public void setOnColletion5(Boolean onColletion5) {
    this.onColletion5 = onColletion5;
  }

  public String getTitleCollection5() {
    return titleCollection5;
  }

  public void setTitleCollection5(String titleCollection5) {
    this.titleCollection5 = titleCollection5;
  }

  public String getUrlCollection5() {
    return urlCollection5;
  }

  public void setUrlCollection5(String urlCollection5) {
    this.urlCollection5 = urlCollection5;
  }

  public Integer getCollectionList5() {
    return collectionList5;
  }

  public void setCollectionList5(Integer collectionList5) {
    this.collectionList5 = collectionList5;
  }

  public Boolean getOnColletion6() {
    return onColletion6;
  }

  public void setOnColletion6(Boolean onColletion6) {
    this.onColletion6 = onColletion6;
  }

  public String getTitleCollection6() {
    return titleCollection6;
  }

  public void setTitleCollection6(String titleCollection6) {
    this.titleCollection6 = titleCollection6;
  }

  public String getUrlCollection6() {
    return urlCollection6;
  }

  public void setUrlCollection6(String urlCollection6) {
    this.urlCollection6 = urlCollection6;
  }

  public Integer getCollectionList6() {
    return collectionList6;
  }

  public void setCollectionList6(Integer collectionList6) {
    this.collectionList6 = collectionList6;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (hid != null ? hid.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof ConfigHome)) {
      return false;
    }
    ConfigHome other = (ConfigHome) object;
    if ((this.hid == null && other.hid != null) || (this.hid != null && !this.hid.equals(other.hid))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.ConfigHome[ hid=" + hid + " ]";
  }
  
}
