package com.example.website_cosmetics_nhom10.beans;

import java.util.Collection;
import java.util.HashMap;

public class Cart {
    private long id, userId;
    private double total;
    private HashMap<Long, Products> data;

    public Cart() {

    }

    public Cart(long id, double total, long userId) {
        this.id = id;
        this.total = total;
        this.userId = userId;
        this.data = new HashMap<>();
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Collection<Products> getData() {
        return this.data.values();
    }

    public void setData(HashMap<Long, Products> data) {
        this.data = data;
    }
}
