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
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author thang
 */
@Entity
@Table(name = "menu")
@NamedQueries({
  @NamedQuery(name = "Menus.findAll", query = "SELECT m FROM Menus m")})
public class Menus implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY) 
  @Column(name = "menu_id")
  private Integer menuId;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 150)
  @Column(name = "menu_name")
  private String menuName;
  @Column(name = "sequence")
  private Integer sequence;
  @Basic(optional = false)
  @NotNull
  @Column(name = "parents")
  private int parents;
  @Column(name = "page_style")
  private Integer pageStyle;
  @Column(name = "format_page")
  private Integer formatPage;
  @Size(max = 255)
  @Column(name = "group_link")
  private String groupLink;
  @Lob
  @Size(max = 65535)
  @Column(name = "page_content")
  private String pageContent;
  @Size(max = 255)
  @Column(name = "url_page")
  private String urlPage;
  @Basic(optional = false)
  @NotNull
  @Column(name = "status")
  private boolean status;
  @Column(name = "created_at")
  @Temporal(TemporalType.TIMESTAMP)
  @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
  private Date createdAt;

  public Menus() {
  }

  public Menus(Integer menuId) {
    this.menuId = menuId;
  }

  public Menus(Integer menuId, String menuName, int parents, boolean status) {
    this.menuId = menuId;
    this.menuName = menuName;
    this.parents = parents;
    this.status = status;
  }

  public Integer getMenuId() {
    return menuId;
  }

  public void setMenuId(Integer menuId) {
    this.menuId = menuId;
  }

  public String getMenuName() {
    return menuName;
  }

  public void setMenuName(String menuName) {
    this.menuName = menuName;
  }

  public Integer getSequence() {
    return sequence;
  }

  public void setSequence(Integer sequence) {
    this.sequence = sequence;
  }

  public int getParents() {
    return parents;
  }

  public void setParents(int parents) {
    this.parents = parents;
  }

  public Integer getPageStyle() {
    return pageStyle;
  }

  public void setPageStyle(Integer pageStyle) {
    this.pageStyle = pageStyle;
  }

  public Integer getFormatPage() {
    return formatPage;
  }

  public void setFormatPage(Integer formatPage) {
    this.formatPage = formatPage;
  }

  public String getGroupLink() {
    return groupLink;
  }

  public void setGroupLink(String groupLink) {
    this.groupLink = groupLink;
  }

  public String getPageContent() {
    return pageContent;
  }

  public void setPageContent(String pageContent) {
    this.pageContent = pageContent;
  }

  public String getUrlPage() {
    return urlPage;
  }

  public void setUrlPage(String urlPage) {
    this.urlPage = urlPage;
  }

  public boolean getStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

  public Date getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(Date createdAt) {
    this.createdAt = createdAt;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (menuId != null ? menuId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Menus)) {
      return false;
    }
    Menus other = (Menus) object;
    if ((this.menuId == null && other.menuId != null) || (this.menuId != null && !this.menuId.equals(other.menuId))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.Menus[ menuId=" + menuId + " ]";
  }
  
}
