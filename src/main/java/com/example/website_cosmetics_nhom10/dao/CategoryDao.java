package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.database.JDBIConnector;
import com.example.website_cosmetics_nhom10.beans.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDao {
    public static CategoryDao instance;

    public CategoryDao() {

    }

    public static CategoryDao getInstance() {
        if (instance == null)
            instance = new CategoryDao();
        return instance;
    }

    public List<Category> getAll() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from category").mapToBean(Category.class).stream().collect(Collectors.toList()));
    }
    public void insertCategory(String name) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("INSERT INTO category (name) VALUES(?)")
                        .bind (0, name)
                        .execute ());
    }
    public static void main(String[] args) {
        System.out.print(CategoryDao.getInstance().getAll());
    }
}
