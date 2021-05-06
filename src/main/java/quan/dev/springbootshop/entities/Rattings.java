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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Ngoc Hoan
 */
@Entity
@Table(name = "rattings")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rattings.findAll", query = "SELECT r FROM Rattings r")
    , @NamedQuery(name = "Rattings.findById", query = "SELECT r FROM Rattings r WHERE r.id = :id")
    , @NamedQuery(name = "Rattings.findByProductId", query = "SELECT r FROM Rattings r WHERE r.productId = :productId")
    , @NamedQuery(name = "Rattings.findByPoint", query = "SELECT r FROM Rattings r WHERE r.point = :point")})
public class Rattings implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "product_id")
    private int productId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "point")
    private int point;

    public Rattings() {
    }

    public Rattings(Integer id) {
        this.id = id;
    }

    public Rattings(Integer id, int productId, int point) {
        this.id = id;
        this.productId = productId;
        this.point = point;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
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
        if (!(object instanceof Rattings)) {
            return false;
        }
        Rattings other = (Rattings) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Rattings[ id=" + id + " ]";
    }
    
}
