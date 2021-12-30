package com.example.website_cosmetics_nhom10.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public class JDBIConnector {
    private static Jdbi jdbi;

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + com.example.website_cosmetics_nhom10.db.DBProperties.getDbHost() + ":" + com.example.website_cosmetics_nhom10.db.DBProperties.getDbPort() + "/" + com.example.website_cosmetics_nhom10.db.DBProperties.getDatabaseName());
        dataSource.setUser(com.example.website_cosmetics_nhom10.db.DBProperties.getUsername());
        dataSource.setPassword(com.example.website_cosmetics_nhom10.db.DBProperties.getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        jdbi = Jdbi.create(dataSource);
    }

    private JDBIConnector() {

    }

    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }
}
