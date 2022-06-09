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

    public static void main(String[] args) {
        System.out.println(ReviewService.getInstance().getByProductId(8L));
    }
}
