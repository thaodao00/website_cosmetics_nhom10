package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Origin;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.dao.OriginDao;
import com.example.website_cosmetics_nhom10.dao.ProductDao;

import java.util.List;

public class OriginService {
    public static OriginService instance;

    public static OriginService getInstance() {
        if (instance == null)
            instance = new OriginService ();
        return instance;
    }

    private OriginService() {

    }
    public List<Origin> getAll() {
        return OriginDao.getInstance().getAll();
    }
}
