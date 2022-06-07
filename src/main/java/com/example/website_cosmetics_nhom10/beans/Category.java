package com.example.website_cosmetics_nhom10.beans;

import java.io.Serializable;

public class Category implements Serializable {
    Long id;
    String name;

    public Category() {

    }

    public Category(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return name;
    }

    public void setTitle(String title) {
        this.name = name;
    }
}