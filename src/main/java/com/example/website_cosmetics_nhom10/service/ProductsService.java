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
    public List<Products> getNext10(int amount) {
        return ProductDao.getInstance().getNext10 (amount);

    }
    public List<Products> getProductByCateId(Long id){
        return ProductDao.getInstance().getProductByCateId (id);
    }
    public List<Products> getTagNameLimit5(String name) {
        return ProductDao.getInstance().getTagNameLimit5(name);
    }
    public List<Products> getTagNameLimit8(String name) {
        return ProductDao.getInstance().getTagNameLimit8(name);
    }
    public List<Products> searchByName(String txtSearch){
        return  ProductDao.getInstance ().searchByName (txtSearch);
    }
    public Product getById(Long id) {
        return ProductDao.getInstance().getById(id);
    }
    public List<Products> priceByLowestFirst(){
        return ProductDao.getInstance ().priceByLowestFirst ();
    }
}
