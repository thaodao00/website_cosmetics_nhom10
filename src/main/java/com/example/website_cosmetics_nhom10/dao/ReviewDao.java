package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ReviewDao {
    private static ReviewDao instance;

    public static ReviewDao getInstance() {
        if (instance == null)
            instance = new ReviewDao();
        return instance;
    }

    private List<Review> setUserInfo(List<Review> list) {
        for (Review r : list)
            r.setUser(UserDao.getInstance().findById(r.getUserId()));
        return list;
    }

    public List<Review> getAll() {
        List<Review> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from review  order by created_at desc")
                        .mapToBean(Review.class)
                        .list());
        if (list.size() > 0)
            return setUserInfo(list);
        return null;
    }

    public List<Review> getByProductId(Long pid) {
        List<Review> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from review where productid = ? order by created_at desc")
                        .bind(0, pid)
                        .mapToBean(Review.class)
                        .list());
        if (list.size() > 0)
            return setUserInfo(list);
        return new ArrayList<>();
    }

    public boolean insertReview(Long userId, Long productId, String comment) {
        int i = JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("insert into review (userid, productid, comment) values (?, ?, ?)")
                        .bind(0, userId)
                        .bind(1, productId)
                        .bind(2, comment)
                        .execute());
        return i == 1;
    }

    public void seedData(List<User> users, List<Product> products, List<String> comments) {
        for (Product p : products) {
            Collections.shuffle(comments);
            Collections.shuffle(users);
            for (int i = 0; i < 7; i++)
                insertReview(users.get(i).getId(), p.getId(), comments.get(i));
        }
    }
    public void deleteReviewId(Long productid) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("DELETE FROM review WHERE productid = ?").bind(0, productid).execute());
    }
    public void deleteReviewUserId(Long userid) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("DELETE FROM review WHERE userid = ?").bind(0, userid).execute());
    }
}
