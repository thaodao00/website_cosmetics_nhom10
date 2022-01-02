package com.example.website_cosmetics_nhom10.Db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;
import static com.example.website_cosmetics_nhom10.Db.DBProperties.*;

public class JDBIConnector {
    public static Jdbi jdbi;
    public static void makeConnect(){
        MysqlDataSource dataSource = new MysqlDataSource ();
        dataSource.setURL ("jdbc:mysql://"+getDbHost()+":"+getDbPort()+"/"+getDbName());
     dataSource.setUser (getUserName ());
     dataSource.setPassword (getPassword ());
        try {
            dataSource.setUseCompression (true);
            dataSource.setAutoReconnect (true);
        } catch (SQLException e) {
            e.printStackTrace ();
        }

     jdbi=jdbi.create (dataSource);
    }
    private JDBIConnector() {

    }

    public  static  Jdbi get(){
        if(jdbi ==null) makeConnect ();
        return jdbi;
    }
}
