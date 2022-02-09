package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;

public class CartDao {
    public static CartDao instance;

    public CartDao() {

    }

    public static CartDao getInstance() {
        if (instance == null)
            instance = new CartDao();
        return instance;
    }

    public static boolean createCart(Long userId) {
        String sql = "insert into cart(userid) values(?)";
        int i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                .bind(0, userId)
                .execute());
        return i == 1;
    }

    public static Cart getByIdUser(Long userId) {
        String sql = "select * from cart where userid = ?";
        List<Cart> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, userId)
                .mapToBean(Cart.class).list());
        if (list.size() == 1)
            return list.get(0);
        return null;
    }

    public static boolean checkCartExist(Long userId) {
        String sql = "select * from cart where userid = ?";
        List<Cart> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, userId)
                .mapToBean(Cart.class).list());
        return list.size() < 1;
    }

    public boolean addToCart(Long productId, Long cartId, int quantity) {
        String sql = "insert into cartitems(cartid, productid, quantity)";
        int i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                .bind(0, cartId)
                .bind(1, productId)
                .bind(2, quantity)
                .execute());
        return i == 1;
    }
}
