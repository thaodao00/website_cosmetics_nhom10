package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.database.JDBIConnector;
import com.example.website_cosmetics_nhom10.beans.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDao {
    public static CategoryDao instance;
    public CategoryDao(){

    }
    public static CategoryDao getInstance(){
        if(instance ==null){
            instance = new CategoryDao ();
        }
        return  instance;
    }
    public List<Category>getAllCategory(){
        return JDBIConnector.get ().withHandle (handle -> handle.createQuery ("select * from category").mapToBean (Category.class).stream ().collect(Collectors.toList()));
    }

}
