package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.bean.Product;
import com.example.website_cosmetics_nhom10.dao.ProductDao;

import java.util.List;

public class ProductsService {
    private static ProductsService instance;

    public static ProductsService getInstance() {
        if (instance == null) {
            instance = new ProductsService ();
        }
        return instance;
    }

    private ProductsService() {

    }

    public List<Product> getAll() {
        return ProductDao.getInstance ().getAll ();

    }
}