package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.dao.ReviewDao;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

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
    public void deleteReviewId(Long productid) {
        ReviewDao.getInstance ().deleteReviewId (productid);
    }
    public void deleteReviewUserId(Long userId) {
        ReviewDao.getInstance ().deleteReviewUserId (userId);
    }
    public static void main(String[] args) {
//        ReviewService.getInstance().seedData();
//        List<Product> list = ProductService.getInstance().getAll();
//        for (Product p : list) {
//            JDBIConnector.get().withHandle(handle ->
//                    handle.createUpdate("update product set companyid = ?, tagid = ? WHERE id = ?")
//                            .bind(0, Math.floor(new Random().nextInt(6) + 1))
//                            .bind(1, Math.floor(new Random().nextInt(3) + 1))
//                            .bind(2, p.getId())
//                            .execute());
//        }

//        List<Product> list = ProductService.getInstance().getAll();
//        for (Product p : list) {
//            double d = 0.0;
//            while (d <= 0.5) {
//                d = Math.floor(new Random().nextDouble() * 10) / 10;
//            }
//            double x = d;
//            JDBIConnector.get().withHandle(handle ->
//                    handle.createUpdate("update product set discount = ? WHERE id = ?")
//                            .bind(0, p.getPrice() * x)
//                            .bind(1, p.getId())
//                            .execute());
//        }

//        List<Product> list = ProductService.getInstance().getAll();
//        for (Product p : list) {
//            double d = 0.0;
//            while (d <= 0.5) {
//                d = Math.floor(new Random().nextDouble() * 10) / 10;
//            }
//            double x = d;
//            JDBIConnector.get().withHandle(handle ->
//                    handle.createUpdate("update product set discount = ? WHERE id = ?")
//                            .bind(0, p.getPrice() * x)
//                            .bind(1, p.getId())
//                            .execute());
//        }

//        File dir = new File("C:\\Users\\DELL\\OneDrive\\Documents\\GitHub\\website_cosmetics_nhom10\\src\\main\\webapp\\template\\web\\assets\\img\\thumbnail");
//        final File[] children = dir.listFiles();
//        HashMap<String, String> data = new HashMap<>();
//        for (File f : children) {
//            String fname = f.getName();
//            String head = fname.substring(0, fname.lastIndexOf("."));
//            String tail = fname.substring(fname.lastIndexOf("."));
//            data.put(head, tail);
//        }
//
//        List<Product> list = ProductService.getInstance().getAll();
//        int count = 0;
//        for (Product p : list) {
//            count++;
//            String pname = p.getName();
//            String tail = data.get(pname);
//            JDBIConnector.get().withHandle(handle ->
//                    handle.createUpdate("update product set thumbnailImg = ? WHERE id = ?")
//                            .bind(0, pname + tail)
//                            .bind(1, p.getId())
//                            .execute());
//        }

//        File dir = new File("C:\\Users\\DELL\\OneDrive\\Documents\\GitHub\\website_cosmetics_nhom10\\src\\main\\webapp\\template\\web\\assets\\img\\thumbnail");
//        File[] children = dir.listFiles();
//        for (File f : children) {
//            String fName = f.getName();
//            String absolutePath = f.getAbsolutePath();
//            f.renameTo(new File(absolutePath.substring(0, absolutePath.lastIndexOf("\\")) + "\\" + fName.replaceAll("-", "")));
//        }
//
//        List<Product> list = ProductService.getInstance().getAll();
//        for (Product p : list) {
//            JDBIConnector.get().withHandle(handle ->
//                    handle.createUpdate("update product set thumbnailImg = ? WHERE id = ?")
//                            .bind(0, p.getThumbnailImg().replaceAll("-", ""))
//                            .bind(1, p.getId())
//                            .execute());
//        }

        // seed inventory
//        List<Product> list = ProductService.getInstance().getAll();
//        for (Product p : list)
//            InventoryService.getInstance().updateInventory(p.getId(), new Random().nextInt(500) + 100);
    }
}
