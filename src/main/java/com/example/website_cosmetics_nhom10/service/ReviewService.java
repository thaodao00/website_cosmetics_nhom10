package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.dao.ReviewDao;

import java.util.List;

public class ReviewService {
    private static ReviewService instance;

    public static ReviewService getInstance() {
        if (instance == null)
            instance = new ReviewService();
        return instance;
    }

    public List<Review> getAll() {
        return ReviewDao.getInstance().getAll();
    }

    public List<Review> getByProductId(Long pid) {
        return ReviewDao.getInstance().getByProductId(pid);
    }

    public boolean insertReview(Long userId, Long productId, String comment) {
        return ReviewDao.getInstance().insertReview(userId, productId, comment);
    }

    public static void main(String[] args) {
        ReviewService.getInstance().insertReview(10L, 5L, "Ewwww");
    }
}
