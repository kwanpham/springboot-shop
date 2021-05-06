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
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author thang
 */
@Entity
@Table(name = "config")
@NamedQueries({
  @NamedQuery(name = "Config.findAll", query = "SELECT c FROM Config c")})
public class Config implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "cfid")
  private Integer cfid;
  @Size(max = 255)
  @Column(name = "logo")
  private String logo;
  @Size(max = 255)
  @Column(name = "name_company")
  private String nameCompany;
  @Column(name = "main_menu")
  private Integer mainMenu;
  // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
  @Size(max = 100)
  @Column(name = "email")
  private String email;
  @Size(max = 100)
  @Column(name = "website")
  private String website;
  @Size(max = 40)
  @Column(name = "hotline")
  private String hotline;
  @Size(max = 40)
  @Column(name = "hotline2")
  private String hotline2;
  @Size(max = 255)
  @Column(name = "address")
  private String address;
  @Size(max = 255)
  @Column(name = "facebook")
  private String facebook;
  @Size(max = 255)
  @Column(name = "youtube")
  private String youtube;
  @Size(max = 255)
  @Column(name = "icon_favicon")
  private String iconFavicon;
  @Size(max = 150)
  @Column(name = "title_menu_footer_1")
  private String titleMenuFooter1;
  @Lob
  @Size(max = 65535)
  @Column(name = "menu_footer_1")
  private String menuFooter1;
  @Size(max = 150)
  @Column(name = "title_menu_footer_2")
  private String titleMenuFooter2;
  @Lob
  @Size(max = 65535)
  @Column(name = "menu_footer_2")
  private String menuFooter2;
  @Size(max = 150)
  @Column(name = "title_menu_footer_3")
  private String titleMenuFooter3;
  @Lob
  @Size(max = 65535)
  @Column(name = "menu_footer_3")
  private String menuFooter3;
  @Size(max = 150)
  @Column(name = "title_menu_footer_4")
  private String titleMenuFooter4;
  @Lob
  @Size(max = 65535)
  @Column(name = "menu_footer_4")
  private String menuFooter4;
  @Lob
  @Size(max = 65535)
  @Column(name = "des_content_footer")
  private String desContentFooter;

  public Config() {
  }

  public Config(Integer cfid) {
    this.cfid = cfid;
  }

  public Integer getCfid() {
    return cfid;
  }

  public void setCfid(Integer cfid) {
    this.cfid = cfid;
  }

  public String getLogo() {
    return logo;
  }

  public void setLogo(String logo) {
    this.logo = logo;
  }

  public String getNameCompany() {
    return nameCompany;
  }

  public void setNameCompany(String nameCompany) {
    this.nameCompany = nameCompany;
  }

  public Integer getMainMenu() {
    return mainMenu;
  }

  public void setMainMenu(Integer mainMenu) {
    this.mainMenu = mainMenu;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getWebsite() {
    return website;
  }

  public void setWebsite(String website) {
    this.website = website;
  }

  public String getHotline() {
    return hotline;
  }

  public void setHotline(String hotline) {
    this.hotline = hotline;
  }

  public String getHotline2() {
    return hotline2;
  }

  public void setHotline2(String hotline2) {
    this.hotline2 = hotline2;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getFacebook() {
    return facebook;
  }

  public void setFacebook(String facebook) {
    this.facebook = facebook;
  }

  public String getYoutube() {
    return youtube;
  }

  public void setYoutube(String youtube) {
    this.youtube = youtube;
  }

  public String getIconFavicon() {
    return iconFavicon;
  }

  public void setIconFavicon(String iconFavicon) {
    this.iconFavicon = iconFavicon;
  }

  public String getTitleMenuFooter1() {
    return titleMenuFooter1;
  }

  public void setTitleMenuFooter1(String titleMenuFooter1) {
    this.titleMenuFooter1 = titleMenuFooter1;
  }

  public String getMenuFooter1() {
    return menuFooter1;
  }

  public void setMenuFooter1(String menuFooter1) {
    this.menuFooter1 = menuFooter1;
  }

  public String getTitleMenuFooter2() {
    return titleMenuFooter2;
  }

  public void setTitleMenuFooter2(String titleMenuFooter2) {
    this.titleMenuFooter2 = titleMenuFooter2;
  }

  public String getMenuFooter2() {
    return menuFooter2;
  }

  public void setMenuFooter2(String menuFooter2) {
    this.menuFooter2 = menuFooter2;
  }

  public String getTitleMenuFooter3() {
    return titleMenuFooter3;
  }

  public void setTitleMenuFooter3(String titleMenuFooter3) {
    this.titleMenuFooter3 = titleMenuFooter3;
  }

  public String getMenuFooter3() {
    return menuFooter3;
  }

  public void setMenuFooter3(String menuFooter3) {
    this.menuFooter3 = menuFooter3;
  }

  public String getTitleMenuFooter4() {
    return titleMenuFooter4;
  }

  public void setTitleMenuFooter4(String titleMenuFooter4) {
    this.titleMenuFooter4 = titleMenuFooter4;
  }

  public String getMenuFooter4() {
    return menuFooter4;
  }

  public void setMenuFooter4(String menuFooter4) {
    this.menuFooter4 = menuFooter4;
  }

  public String getDesContentFooter() {
    return desContentFooter;
  }

  public void setDesContentFooter(String desContentFooter) {
    this.desContentFooter = desContentFooter;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (cfid != null ? cfid.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Config)) {
      return false;
    }
    Config other = (Config) object;
    if ((this.cfid == null && other.cfid != null) || (this.cfid != null && !this.cfid.equals(other.cfid))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "entities.Config[ cfid=" + cfid + " ]";
  }
  
}
