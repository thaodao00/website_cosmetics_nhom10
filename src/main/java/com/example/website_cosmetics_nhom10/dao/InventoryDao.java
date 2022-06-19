package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.CartItems;
import com.example.website_cosmetics_nhom10.beans.Inventory;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;
import com.mysql.cj.jdbc.JdbcConnection;

import java.util.List;
import java.util.stream.Collectors;

public class InventoryDao {
    public static InventoryDao instance;

    public InventoryDao() {

    }

    public static InventoryDao getInstance() {
        if (instance == null)
            instance = new InventoryDao();
        return instance;
    }

    public Inventory getInventory(Long productid) {
        List<Inventory> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from inventory where productid = ?")
                .bind(0, productid)
                .mapToBean(Inventory.class)
                .list());
        if (list.size() > 0)
            return list.get(0);
        return null;
    }

    public List<Inventory> getAll() {
        return JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from inventory").mapToBean(Inventory.class).stream().collect(Collectors.toList()));

    }

    public void insertInventory(Long productid, int amount) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO inventory (productid, amount) VALUES(?, ?)")
                        .bind(0, productid)
                        .bind(1, amount)
                        .execute());
    }

    public void updateInventory(Long productid, int amount) {
        JDBIConnector.get().withHandle(handle -> handle.createUpdate("UPDATE inventory set amount=? WHERE productid = ?")
                .bind(0, amount)
                .bind(1, productid)
                .execute());
    }

    public void deleteInventoryId(Long productid) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("DELETE FROM inventory WHERE productid = ?").bind(0, productid).execute());
    }

}
