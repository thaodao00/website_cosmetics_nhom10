package com.example.website_cosmetics_nhom10.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {
    private static DbConnect dbConnect;
    private static Connection connection;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/lab7";
    private static final String USER = "root";
    private static final String PASS = "daothithuthao5624";

    public static Statement connect() throws ClassNotFoundException, SQLException {
            if (connection == null || connection.isClosed ()) {
            Class.forName ("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection (DB_URL, USER, PASS);
        }
        return connection.createStatement ();

    }

    public static DbConnect getInstance(){
        if (dbConnect ==null){
            dbConnect = new DbConnect ();
        }
        return dbConnect;
    }
}
