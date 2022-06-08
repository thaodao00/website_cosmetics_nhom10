package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Company;
import com.example.website_cosmetics_nhom10.beans.Origin;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Tag;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDao {
    public static ProductDao instance;

    public ProductDao() {

    }

    public static ProductDao getInstance() {
        if (instance == null)
            instance = new ProductDao();
        return instance;
    }

    public List<Product> getAll() {
        List<Product> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product").mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> getProductWithLimit(int... params) {
        List<Product> list = null;
        if (params.length > 1)
            list = JDBIConnector.get().withHandle(
                    handle -> handle.createQuery("select * from product limit ?, ?")
                            .bind(0, params[0])
                            .bind(1, params[1])
                            .mapToBean(Product.class)
                            .stream()
                            .collect(Collectors.toList()));
        else list = JDBIConnector.get().withHandle(
                handle -> handle.createQuery("select * from product limit ?")
                        .bind(0, params[0])
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList()));
        return setProductInfo(list);
    }

    private static List<Product> setProductInfo(List<Product> list) {
        List<Tag> tagNameList = TagDao.getInstance().getAll();
        List<Company> companyList = CompanyDao.getInstance().getAll();
        List<Origin> originList = OriginDao.getInstance().getAll();

        for (Product p : list) {
            for (Tag t : tagNameList)
                if (t.getId() == p.getTagId())
                    p.setTagName(t.getName());
            for (Company c : companyList)
                if (c.getId() == p.getCompanyId())
                    p.setCompanyName(c.getName());
            for (Origin o : originList)
                if (o.getId() == p.getOriginId())
                    p.setOriginName(o.getName());
        }
        return list;
    }

    private static Product setProductInfo(Product p) {
        p.setTagName(TagDao.getInstance().getTagById(p.getTagId()).getName());
        p.setOriginName(OriginDao.getInstance().getOriginById(p.getOriginId()).getName());
        p.setCompanyName(CompanyDao.getInstance().getCompanyById(p.getCompanyId()).getName());
        return p;
    }

    public List<Product> getProductByTagName(String tagName, int quantity) {
        Tag tag = TagDao.getInstance().getTagByTagName(tagName);
        List<Product> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product where tagid = ? limit ?")
                        .bind(0, tag.getId())
                        .bind(1, quantity)
                        .mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> getProductByCateId(long id) {
        List<Product> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * from product where categoryid = ?").bind(0, id).mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = JDBIConnector.get().withHandle(handle
                -> handle.createQuery("select * from product where name like ?").bind(0, "%" + txtSearch + "%").mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> byPriceLowestFirst() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product ORDER BY discount asc").mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> byPriceHighestFirst() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product ORDER BY discount desc").mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public List<Product> byNewest() {
        List<Product> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product ORDER BY created_at desc").mapToBean(Product.class).stream().collect(Collectors.toList()));
        return setProductInfo(list);
    }

    public Product getProductById(Long id) {
        Product p = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product where id = ?")
                .bind(0, id)
                .mapToBean(Product.class).one());
        return setProductInfo(p);
    }
    public void deleteProductById(Long id){
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate ("DELETE FROM product WHERE id = ?").bind(0, id).execute());
    }
    public void insertProduct(String name, String thumbnailImg, double price, double discount,int sold, String shortDescription, String longDescription, double rate, String weight, String dimension, Long originid, Long categoryid, Long companyid, Long tagid){
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO product (name, thumbnailimg, price, discount, sold, shortDescription,longDescription, rate, weight, dimension, originid, categoryid, companyid, tagid) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
                        .bind (0,name)
                        .bind (1, thumbnailImg)
                        .bind (2,price)
                        .bind (3, discount)
                        .bind (4, sold)
                        .bind (5, shortDescription)
                        .bind (6, longDescription)
                        .bind (7, rate)
                        .bind (8, weight)
                        .bind (9, dimension)
                        .bind (10, originid)
                        .bind (11, categoryid)
                        .bind (12, companyid)
                        .bind (13, tagid)
                        .execute ());
    }
}
