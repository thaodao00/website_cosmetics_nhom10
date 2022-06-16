package com.example.website_cosmetics_nhom10.beans;

public class Inventory {
    public Long id;
    public Long productId;
    public int amount;
    public  Inventory() {
    }
    public Inventory(Long id, Long productId, int amount) {
        this.id = id;
        this.productId = productId;
        this.amount = amount;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Inventory{" +
                "id=" + id +
                ", productId=" + productId +
                ", amount=" + amount +
                '}';
    }
}
