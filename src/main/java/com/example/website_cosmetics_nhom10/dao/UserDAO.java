package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.Db.JDBIConnector;
import com.example.website_cosmetics_nhom10.beans.User;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {

    private static UserDAO instance;

    private UserDAO() {

    }

    public static UserDAO getInstance() {
        if (instance == null)
            instance = new UserDAO();
        return instance;
    }

    public boolean register(User newUser) throws SQLException {
        String sql = "INSERT INTO user(username, fullname, password, email, phone, country) VALUES (?, ?, ?, ?, ?, ?)";
        int i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                .bind(0, newUser.getUsername())
                .bind(1, newUser.getFullName())
                .bind(2, newUser.getPassword())
                .bind(3, newUser.getEmail())
                .bind(4, newUser.getPhone())
                .bind(5, newUser.getCountry())
                .execute());
        return i == 1;
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
}
