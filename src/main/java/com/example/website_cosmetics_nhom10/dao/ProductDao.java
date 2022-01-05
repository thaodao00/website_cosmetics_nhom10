package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import com.example.website_cosmetics_nhom10.beans.Products;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    public static ProductDao instance;

    public ProductDao() {

    }

    public static ProductDao getInstance() {
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public List<Products> getAll() {
        //Cú pháp lambda
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select *from products").mapToBean(Products.class).stream().collect(Collectors.toList()));

    }
    public List<Products> getTop10(){
        return  JDBIConnector.get ().withHandle (handle ->
                handle.createQuery ("select*from products limit 10").mapToBean (Products.class).stream ().collect(Collectors.toList()));
    }
    public List<Products> getNext10(int amount){
        return  JDBIConnector.get ().withHandle (handle ->
                handle.createQuery ("select*from products limit ? , 10").bind (0,amount).mapToBean (Products.class).stream ().collect(Collectors.toList()));
    }
    public List<Products> getTagName(String tagName) {
        //Cú pháp lambda
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from products where tagName = ?").bind(0, tagName).mapToBean(Products.class).stream().collect(Collectors.toList()));
    }

    public Product getById(Long id) {
        // Cú pháp lambda
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from products where id = ?").bind(0, id).mapToBean(Product.class).first());
    }
}
