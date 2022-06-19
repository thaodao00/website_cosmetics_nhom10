package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.ProductImages;
import com.example.website_cosmetics_nhom10.dao.ProductImagesDao;

import java.util.List;

public class ProductImagesService {
    private static ProductImagesService instance;

    public static ProductImagesService getInstance() {
        if (instance == null)
            instance = new ProductImagesService();
        return instance;
    }

    public List<ProductImages> getAll() {
        return ProductImagesDao.getInstance().getAll();
    }

    public List<ProductImages> getByProductId(Long pid) {
        return ProductImagesDao.getInstance().getByProductId(pid);
    }

    public boolean insertProductImages(ProductImages productImages) {
        return ProductImagesDao.getInstance().insertProductImages(productImages);
    }
}
