package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.ProductImages;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;

public class ProductImagesDao {
    private static ProductImagesDao instance;

    public static ProductImagesDao getInstance() {
        if (instance == null)
            instance = new ProductImagesDao();
        return instance;
    }

    public List<ProductImages> getAll() {
        List<ProductImages> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from productimages")
                        .mapToBean(ProductImages.class)
                        .list());
        if (list.size() > 0)
            return list;
        return null;
    }

    public List<ProductImages> getByProductId(Long pid) {
        List<ProductImages> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from productimages where productid = ?")
                        .bind(0, pid)
                        .mapToBean(ProductImages.class)
                        .list());
        if (list.size() > 0)
            return list;
        return null;
    }

    public boolean insertProductImages(ProductImages pi) {
        int i = JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("insert into productimages(link, productid) values (?, ?)")
                        .bind(0, pi.getLink())
                        .bind(1, pi.getPid())
                        .execute());
        return i == 1;
    }
}
