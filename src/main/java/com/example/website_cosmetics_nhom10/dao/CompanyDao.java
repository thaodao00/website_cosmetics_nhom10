package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Company;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CompanyDao {
    private static CompanyDao instance;

    public static CompanyDao getInstance() {
        if (instance == null)
            instance = new CompanyDao();
        return instance;
    }

    public Company getCompanyById(long id) {
        return JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT * from company where id = ?")
                        .bind(0, id)
                        .mapToBean(Company.class)
                        .one());
    }

    public List<Company> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from company").mapToBean(Company.class).stream().collect(Collectors.toList()));
    }

    public static void main(String[] args) {
        System.out.println(CompanyDao.getInstance().getAll());
    }

}
