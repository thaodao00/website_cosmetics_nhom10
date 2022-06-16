package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Inventory;
import com.example.website_cosmetics_nhom10.dao.InventoryDao;

import java.util.List;

public class InventoryService {
    public static InventoryService instance;
    public static InventoryService getInstance() {
        if (instance == null)
            instance = new InventoryService ();
        return instance;
    }
    private InventoryService() {

    }
    public List<Inventory> getAll (){
        return InventoryDao.getInstance ().getAll ();
    }
    public void insertInventory(Long productid, int amount){
         InventoryDao.getInstance ().insertInventory (productid, amount);
    }
    public void updateInventory(Long productid, int amount){
        InventoryDao.getInstance ().updateInventory (productid, amount);
    }
    public void deleteinventoryId(Long productid){
        InventoryDao.getInstance ().deleteinventoryId (productid);
    }
}
