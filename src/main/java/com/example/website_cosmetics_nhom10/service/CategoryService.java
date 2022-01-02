package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.dao.CategoryDao;

import java.util.List;

public class CategoryService {
    private static CategoryService instance;

    public static CategoryService getInstance(){
        if(instance ==null){
            instance = new CategoryService ();
        }
        return  instance;
    }
    public  CategoryService(){

    }

    public List<Category>getAllCategory(){
        return  CategoryDao.getInstance ().getAllCategory ();

    }
}