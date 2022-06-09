package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Origin;
import com.example.website_cosmetics_nhom10.beans.Tag;
import com.example.website_cosmetics_nhom10.dao.OriginDao;
import com.example.website_cosmetics_nhom10.dao.TagDao;

import java.util.List;

public class TagService {
    public static TagService instance;

    public static TagService getInstance() {
        if (instance == null)
            instance = new TagService ();
        return instance;
    }

    private TagService() {

    }
    public List<Tag> getAll() {
        return TagDao.getInstance().getAll();
    }
}
