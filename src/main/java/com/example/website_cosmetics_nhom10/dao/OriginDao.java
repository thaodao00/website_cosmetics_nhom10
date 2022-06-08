package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Origin;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class OriginDao {
    private static OriginDao instance;

    Long id;
    String name;

    public OriginDao() {

    }

    public OriginDao(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public static OriginDao getInstance() {
        if (instance == null)
            instance = new OriginDao();
        return instance;
    }

    public List<Origin> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from origin").mapToBean(Origin.class).stream().collect(Collectors.toList()));
    }

    public Origin getOriginById(Long id) {
        return JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT * from origin where id = ?")
                        .bind(0, id)
                        .mapToBean(Origin.class)
                        .one());
    }

    public Origin getOriginByName(String name) {
        return JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT * from origin where name = ?")
                        .bind(0, name)
                        .mapToBean(Origin.class)
                        .one());
    }
}
