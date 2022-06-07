package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Company;
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
        if (instance == null) {
            instance = new ProductDao();
        }
        return instance;
    }

    public List<Product> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product").mapToBean(Product.class).stream().collect(Collectors.toList()));

    }

    public List<Product> getTop10() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product limit 10").mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

    public List<Product> getNext10(int amount) {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select*from product limit ? , 10").bind(0, amount).mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

    private static void setProductInfo(List<Product> list) {
        List<Tag> tagNameList = TagDao.getInstance().getAll();
        List<Company> companyList = CompanyDao.getInstance().getAll();

        for (Product p : list) {
            for (Tag t : tagNameList)
                if (t.getId() == p.getTagId())
                    p.setTagName(t.getName());
            for (Company c : companyList)
                if (c.getId() == p.getCompanyId())
                    p.setCompanyName(c.getName());
        }
    }

    public List<Product> getProductByTagName(String tagName, int quantity) {
        Tag tag = TagDao.getInstance().getIdByTagName(tagName);
        List<Product> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product where tagid = ? limit ?")
                        .bind(0, tag.getId())
                        .bind(1, quantity)
                        .mapToBean(Product.class).stream().collect(Collectors.toList()));
        setProductInfo(list);
        return list;
    }

    public Product getById(Long id) {
        // Cú pháp lambda
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from product where id = ?").bind(0, id).mapToBean(Product.class).first());
    }

    public List<Product> getProductByCateId(long id) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * from product where categoryid = ?").bind(0, id).mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

    public List<Product> searchByName(String txtSearch) {
        return JDBIConnector.get().withHandle(handle
                -> handle.createQuery("select * from product where name like ?").bind(0, "%" + txtSearch + "%").mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

    //    sort products
    public List<Product> priceByLowestFirst() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from product  ORDER BY price asc limit 10").mapToBean(Product.class).stream().collect(Collectors.toList()));
    }

    public Product getProductById(Long id) {
        String sql = "select * from product where id = ?";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, id)
                .mapToBean(Product.class).one());
    }
}
