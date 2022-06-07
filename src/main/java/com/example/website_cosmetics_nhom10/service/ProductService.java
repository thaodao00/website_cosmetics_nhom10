package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.dao.ProductDao;

import java.util.List;

public class ProductService {
    public static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    private ProductService() {

    }

    public List<Product> getAll() {
        return ProductDao.getInstance().getAll();

    }

    public List<Product> getTop10() {
        return ProductDao.getInstance().getTop10();

    }

    public List<Product> getNext10(int amount) {
        return ProductDao.getInstance().getNext10(amount);

    }

    public List<Product> getProductByCateId(long id) {
        return ProductDao.getInstance().getProductByCateId(id);
    }

    public List<Product> getProductByTagName(String tagName, int quantity) {
        return ProductDao.getInstance().getProductByTagName(tagName, quantity);
    }

    public List<Product> searchByName(String txtSearch) {
        return ProductDao.getInstance().searchByName(txtSearch);
    }

    public Product getById(Long id) {
        return ProductDao.getInstance().getById(id);
    }

    public List<Product> priceByLowestFirst() {
        return ProductDao.getInstance().priceByLowestFirst();
    }

    public Product loadProductById(Long id) {
        return ProductDao.getInstance().getProductById(id);
    }
}
