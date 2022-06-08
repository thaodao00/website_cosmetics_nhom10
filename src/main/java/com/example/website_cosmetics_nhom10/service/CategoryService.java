package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.dao.CategoryDao;

import java.util.List;

public class CategoryService {
    private static CategoryService instance;

    public static CategoryService getInstance() {
        if (instance == null)
            instance = new CategoryService();
        return instance;
    }
    public CategoryService() {
    }
    public List<Category> getAll() {
        return CategoryDao.getInstance().getAll();
    }
    public void insertCategory(String name){
        CategoryDao.getInstance ().insertCategory (name);
    }
    public Category getCategoryById(Long id){
        return  CategoryDao.instance.getCategoryById(id);
    }
    public void updateCategory( String name, Long id){
        CategoryDao.getInstance ().updateCategory ( name, id);
    }
}
