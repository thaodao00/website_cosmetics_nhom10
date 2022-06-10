package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;
import com.example.website_cosmetics_nhom10.beans.User;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

public class UserDao {

    private static UserDao instance;

    private UserDao() {

    }

    public static UserDao getInstance() {
        if (instance == null)
            instance = new UserDao();
        return instance;
    }

    public boolean register(User newUser) throws SQLException {
        String sql = "INSERT INTO user(username, fullname, password, email, phone, country) VALUES (?, ?, ?, ?, ?, ?)";
        int i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                .bind(0, newUser.getUsername())
                .bind(1, newUser.getFullName())
                .bind(2, hashPassword(newUser.getPassword()))
                .bind(3, newUser.getEmail())
                .bind(4, newUser.getPhone())
                .bind(5, newUser.getCountry())
                .execute());
        return i == 1;
    }

    public boolean checkUserExist(String username) throws SQLException {
        String sql = "Select * from user where username = ?";
        List<User> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, username)
                .mapToBean(User.class).list());
        return list.size() < 1;
    }

    private String hashPassword(String password) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("SHA-256");
            md.update(password.getBytes());
            byte[] byteData = md.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean checkLogin(String username) {
        String sql = "Select * from user where username = ?";
        List<User> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, username)
                .mapToBean(User.class).list());
        return list.size() == 1;
    }

    public User login(String username, String password) {
        String sql = "Select * from user where username = ? and password = ?";
        List<User> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, username)
                .bind(1, hashPassword(password))
                .mapToBean(User.class).list());
        User user = null;
        if (list.size() == 1) {
            user = list.get(0);
            user.setPassword(null);
        }
        return user;
    }

    public User findByUsername(String username) {
        String sql = "select * from user where username = ?";
        List<User> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, username)
                .mapToBean(User.class).list());
        if (list.size() == 1)
            return list.get(0);
        return null;
    }

    public User findById(Long id) {
        String sql = "select * from user where id = ?";
        List<User> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, id)
                .mapToBean(User.class).list());
        if (list.size() == 1)
            return list.get(0);
        return null;
    }

    public List<User> getAll() {
        List<User> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from user")
                        .mapToBean(User.class)
                        .list());
        if (list.size() > 0)
            return list;
        return null;
    }
}
