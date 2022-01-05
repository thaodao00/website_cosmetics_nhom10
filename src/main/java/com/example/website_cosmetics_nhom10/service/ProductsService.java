package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.dao.ProductDao;

import java.util.List;

public class ProductsService {
    public static ProductsService instance;

    public static ProductsService getInstance() {
        if (instance == null) {
            instance = new ProductsService();
        }
        return instance;
    }

    private ProductsService() {

    }

    public List<Products> getAll() {
        return ProductDao.getInstance().getAll();

    }
    public List<Products> getTop10() {
        return ProductDao.getInstance().getTop10 ();

    }

    public List<Products> getTagName(String name) {
        return ProductDao.getInstance().getTagName(name);
    }

    public Product getById(Long id) {
        return ProductDao.getInstance().getById(id);
    }
}
