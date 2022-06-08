package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Product;
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
            instance = new CategoryDao ();
        return instance;
    }

    public List<Category> getAll() {
        return JDBIConnector.get ().withHandle (handle -> handle.createQuery ("select * from category").mapToBean (Category.class).stream ().collect (Collectors.toList ()));
    }

    public void insertCategory(String name) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("INSERT INTO category (name) VALUES(?)")
                        .bind (0, name)
                        .execute ());
    }

    public Category getCategoryByID(Long id) {
        return JDBIConnector.get ().withHandle (handle -> handle.createQuery ("select * from category where id = ?")
                .bind (0, id)
                .mapToBean (Category.class)
                .one ());

    }

    public void updateCategory(String name, Long id) {
        JDBIConnector.get ().withHandle (handle -> handle.createUpdate ("UPDATE category set name = ? WHERE id = ?")
                .bind (0, name)
                .bind (1, id)
                .execute ());

    }

    public static void main(String[] args) {
//        System.out.print(CategoryDao.getInstance().getCategoryByID (1L));
        CategoryDao.getInstance ().updateCategory ("ttttttt", 43L);
        System.out.print (CategoryDao.getInstance ().getAll ());
    }
}
