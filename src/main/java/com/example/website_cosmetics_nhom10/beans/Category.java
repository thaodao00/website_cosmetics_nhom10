package com.example.website_cosmetics_nhom10.beans;

import java.io.Serializable;

public class Category implements Serializable {
    Long id;
    String title;

    public Category() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}