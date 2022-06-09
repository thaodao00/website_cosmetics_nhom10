package com.example.website_cosmetics_nhom10.beans;

public class Review {
    private static Review instance;

    Long id;
    Long productId;
    Long userId;
    String comment;

    User user;

    public Review() {
    }

    public Review(Long id, Long productId, Long userId, String comment) {
        this.id = id;
        this.productId = productId;
        this.userId = userId;
        this.comment = comment;
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
