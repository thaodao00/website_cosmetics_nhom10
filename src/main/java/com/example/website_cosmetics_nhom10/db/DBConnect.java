package com.example.website_cosmetics_nhom10.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;

public class DBConnect {
    private static DBConnect dbConnect;
    private static Connection connection;
    private  static  final  String DB_URL = "jdbc:mysql://localhost:3306/website-cosmetics-group10";
    private static String USER ="root";
    private static String PASS ="";

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if(connection ==null || connection.isClosed()){
            Class.forName ("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection (DB_URL,USER,PASS);
        }
        return  connection.createStatement ();
    }
    public static DBConnect getInstance(){
        if(dbConnect==null){
            dbConnect = new DBConnect ();
        }
        return  dbConnect;
    }
}
