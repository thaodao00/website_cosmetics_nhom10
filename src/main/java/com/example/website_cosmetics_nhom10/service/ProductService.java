package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.dao.ProductDao;

import java.util.List;

public class ProductService {
    private static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();
        return instance;
    }

    private ProductService() {

    }

    public List<Product> getAll() {
        return ProductDao.getInstance().getAll();
    }

    public List<Product> getProductWithLimit(int... params) {
        return ProductDao.getInstance().getProductWithLimit(params);
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

    public List<Product> byPriceLowestFirst() {
        return ProductDao.getInstance().byPriceLowestFirst();
    }

    public List<Product> byPriceHighestFirst() {
        return ProductDao.getInstance().byPriceHighestFirst();
    }

    public List<Product> byNewest() {
        return ProductDao.getInstance().byNewest();
    }

    public Product loadProductById(Long id) {
        return ProductDao.getInstance().getProductById(id);
    }

    public Product getProductById(Long id) {
        return ProductDao.getInstance().getProductById(id);
    }

    public void deleteProductById(Long id) {
        ProductDao.getInstance().deleteProductById(id);
    }

    public void insetProduct(Long id, String name, String thumbnailImg, double price, double discount, int sold, String shortDescription, String longDescription, double rate, String weight, String dimension, Long originid, Long categoryid, Long companyid, Long tagid) {
        ProductDao.getInstance().insertProduct(id, name, thumbnailImg, price, discount, sold, shortDescription, longDescription, rate, weight, dimension, originid, categoryid, companyid, tagid);
    }

    public void updateProduct(String name, String thumbnailImg, double price, double discount, int sold, String shortDescription, String longDescription, double rate, String weight, String dimension, Long originid, Long categoryid, Long companyid, Long tagid, Long id) {
        ProductDao.getInstance().updateProduct(name, thumbnailImg, price, discount, sold, shortDescription, longDescription, rate, weight, dimension, originid, categoryid, companyid, tagid, id);
    }

    public List<Product> getRelatedProducts(Long id, int n) {
        return ProductDao.getInstance().getRelatedProducts(id, n);
    }

    public List<Product> paginationProduct(int index, int size) {
        return ProductDao.getInstance().paginationProduct(index, size);
    }

    public void updateCategoryProduct(Long categoryid, Long id) {
        ProductDao.getInstance().updateCategoryForProduct(categoryid, id);
    }

    public static void main(String[] args) {
        System.out.println(ProductService.getInstance().loadProductById(8L));
    }
}
