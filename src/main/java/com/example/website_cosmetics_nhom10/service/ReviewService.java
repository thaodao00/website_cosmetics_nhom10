package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.dao.ReviewDao;

import java.util.ArrayList;
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

    public void seedData() {
        List<Product> products = ProductService.getInstance().getAll();
        List<User> users = UserServices.getInstance().getAll();
        List<String> comments = new ArrayList<>();
        comments.add("I love it");
        comments.add("Good");
        comments.add("Ok");
        comments.add("5*******");
        comments.add("Slightly expensive");
        comments.add("Cheap cost but still good");
        comments.add("Should buy it");
        comments.add("Wow");
        comments.add("Normal");
        comments.add("<3");
        comments.add("^^");

        ReviewDao.getInstance().seedData(users, products, comments);
    }

    public static void main(String[] args) {
//        ReviewService.getInstance().seedData();
        System.out.println(ReviewService.getInstance().getByProductId(1L));
    }
}
