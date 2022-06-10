package com.example.website_cosmetics_nhom10.beans;

import com.example.website_cosmetics_nhom10.dao.ReviewDao;
import com.example.website_cosmetics_nhom10.service.ProductService;

import java.util.List;

public class Review {
    private static Review instance;

    Long id;
    Long productId;
    Long userId;
    String comment;
    String created_at;
    String updated_at;

    User user;

    public Review() {
    }

    public Review(Long id, Long productId, Long userId, String comment, String created_at, String updated_at) {
        this.id = id;
        this.productId = productId;
        this.userId = userId;
        this.comment = comment;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public static Review getInstance() {
        if (instance == null)
            instance = new Review();
        return instance;
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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", productId=" + productId +
                ", userId=" + userId +
                ", comment='" + comment + '\'' +
                '}';
    }

}
