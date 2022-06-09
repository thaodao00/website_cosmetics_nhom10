package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Company;
import com.example.website_cosmetics_nhom10.beans.Origin;
import com.example.website_cosmetics_nhom10.dao.CompanyDao;
import com.example.website_cosmetics_nhom10.dao.OriginDao;

import java.util.List;

public class CompanyService {
    public static CompanyService instance;

    public static CompanyService getInstance() {
        if (instance == null)
            instance = new CompanyService ();
        return instance;
    }

    private CompanyService() {

    }
    public List<Company> getAll() {
        return CompanyDao.getInstance().getAll();
    }
}
