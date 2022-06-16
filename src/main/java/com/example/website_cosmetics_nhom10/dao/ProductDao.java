package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.*;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.Collections;
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
        List<Category> categoryList = CategoryDao.getInstance().getAll();
        List<Inventory> inventoryList = InventoryDao.getInstance ().getAll ();
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
            for (Category c : categoryList)
                if (c.getId() == p.getCategoryId())
                    p.setCategoryName(c.getName());
            for (Inventory i : inventoryList)
                if (i.getProductId () == p.getId ())
                    p.setAmount (i.getAmount ());
        }
        Collections.shuffle(list);
        return list;
    }

    private static Product setProductInfo(Product p) {
        p.setTagName(TagDao.getInstance().getTagById(p.getTagId()).getName());
        p.setOriginName(OriginDao.getInstance().getOriginById(p.getOriginId()).getName());
        p.setCompanyName(CompanyDao.getInstance().getCompanyById(p.getCompanyId()).getName());
        p.setCategoryName(CategoryDao.getInstance().getCategoryById(p.getCategoryId()).getName());
        p.setAmount (InventoryDao.getInstance ().getInventory (p.getId ()).getAmount ());
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
        List<Product> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product where id = ?")
                .bind(0, id)
                .mapToBean(Product.class).list());
        if (list.size() > 0)
            return setProductInfo(list.get(0));
        return null;
    }

    public void deleteProductById(Long id) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("DELETE FROM product WHERE id = ?").bind(0, id).execute());
    }
    public void insertProduct(Long id, String name, String thumbnailImg, double price, double discount, int sold, String shortDescription, String longDescription, double rate, String weight, String dimension, Long originid, Long categoryid, Long companyid, Long tagid) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO product (id, name, thumbnailimg, price, discount, sold, shortDescription,longDescription, rate, weight, dimension, originid, categoryid, companyid, tagid) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
                        .bind (0,id)
                        .bind(1, name)
                        .bind(2, thumbnailImg)
                        .bind(3, price)
                        .bind(4, discount)
                        .bind(5, sold)
                        .bind(6, shortDescription)
                        .bind(7, longDescription)
                        .bind(8, rate)
                        .bind(9, weight)
                        .bind(10, dimension)
                        .bind(11, originid)
                        .bind(12, categoryid)
                        .bind(13, companyid)
                        .bind(14, tagid)
                        .execute());
    }

    public void updateProduct(String name, String thumbnailImg, double price, double discount, int sold, String shortDescription, String longDescription, double rate, String weight, String dimension, Long originid, Long categoryid, Long companyid, Long tagid, Long id) {
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE product set name = ?, thumbnailImg=?, price=?, discount=?, sold = ?, shortDescription = ?, longDescription = ?, rate = ?, weight = ?, dimension = ?, originid = ?, categoryid = ?, companyid =? , tagid = ? WHERE id = ?")
                .bind(0, name)
                .bind(1, thumbnailImg)
                .bind(2, price)
                .bind(3, discount)
                .bind(4, sold)
                .bind(5, shortDescription)
                .bind(6, longDescription)
                .bind(7, rate)
                .bind(8, weight)
                .bind(9, dimension)
                .bind(10, originid)
                .bind(11, categoryid)
                .bind(12, companyid)
                .bind(13, tagid)
                .bind(14, id)
                .execute());
    }
    public void updateCategoryForProduct(Long categoryid, Long id) {
        JDBIConnector.get ().withHandle (handle -> handle.createUpdate ("UPDATE product set  categoryid = ? WHERE id = ?")
                .bind (0, categoryid)
                .bind (1, id)
                .execute ());
    }

    public List<Product> getRelatedProducts(Long id, int n) {
        Product p = getProductById(id);
        List<Product> list = JDBIConnector.get().withHandle(handle
                -> handle.createQuery("select * from product where categoryid = ?")
                .bind(0, p.getCategoryId())
                .mapToBean(Product.class)
                .list());
        Collections.shuffle(list);
        if (list.size() > 10)
            return setProductInfo(list.subList(0, n));
        return setProductInfo(list);
    }

    public List<Product> paginationProduct(int index, int size) {
        List<Product> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("With X AS (SELECT *, ROW_NUMBER() OVER(ORDER BY id DESC) as RN FROM product)\n" +
                                "select * FROM x WHERE RN BETWEEN ?*?-(?-1) AND ?*?")
                        .bind(0, index)
                        .bind(1, size)
                        .bind(2, size)
                        .bind(3, index)
                        .bind(4, size)
                        .mapToBean(Product.class)
                        .list());
        return setProductInfo (list);
    }
    public static void main(String[] args) {
        System.out.println(ProductDao.getInstance().getProductById (17l));
    }
}

