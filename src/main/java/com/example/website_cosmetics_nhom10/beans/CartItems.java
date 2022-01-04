package com.example.website_cosmetics_nhom10.beans;

public class CartItems {
    Long id;
    int quantity;
    double total;
    Products product;

    public CartItems(){

    }

    public CartItems(Long id, int quantity, double total, Products product) {
        this.id = id;
        this.quantity = quantity;
        this.total = total;
        this.product = product;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return this.quantity * this.product.price;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

}
