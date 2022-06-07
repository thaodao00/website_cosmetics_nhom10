package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Tag;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class TagDao {
    public static TagDao instance;

    public static TagDao getInstance() {
        if (instance == null)
            instance = new TagDao();
        return instance;
    }

    public Tag getIdByTagName(String tagName) {
        return JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT * from tag where name = ?")
                        .bind(0, tagName)
                        .mapToBean(Tag.class)
                        .one());
    }

    public List<Tag> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from tag").mapToBean(Tag.class).stream().collect(Collectors.toList()));
    }
}
