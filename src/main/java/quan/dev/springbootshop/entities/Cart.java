/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan.dev.springbootshop.entities;

/**
 *
 * @author LAPNV
 */
public class Cart {
    //Cart chua thuc the product va field so luong quantity
    private Products product;
    private int quantity;

    public Cart() {
    }

    public Cart(Products product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Products getProducts() {
        return product;
    }

    public void setProducts(Products product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
