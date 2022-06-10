package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.dao.UserDao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserServices {
    private static UserServices instance;

    private UserServices() {
    }

    public static UserServices getInstance() {
        if (instance == null)
            instance = new UserServices();
        return instance;
    }

    public boolean checkLogin(String username) {
        return UserDao.getInstance().checkLogin(username);
    }

    public User login(String username, String password) {
        return UserDao.getInstance().login(username, password);
    }

    public boolean checkRegister(String password, String confirmPassword) {
        return password.equals(confirmPassword);
    }

    public boolean checkUserExist(String username) throws SQLException {
        return UserDao.getInstance().checkUserExist(username);
    }

    public boolean register(User newUser) throws SQLException {
        return UserDao.getInstance().register(newUser);
    }

    public User findByUsername(String username) throws SQLException {
        return UserDao.getInstance().findByUsername(username);
    }

    public User findById(Long id) {
        return UserDao.getInstance().findById(id);
    }

    public List<User> getAll() {
        return UserDao.getInstance().getAll();
    }
}
