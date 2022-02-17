package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.CartItems;
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

    public boolean addToCart(long cartId, long productId, int quantity) {
        String sql = "select quantity from cartitems where cartid = ? and productid = ?";
        List<Integer> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, cartId)
                .bind(1, productId)
                .mapTo(Integer.class).list());
        int i;
        if (list.size() > 0) {
            String sql1 = "update cartitems set quantity = ? where cartid = ? and productid = ?";
            i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql1)
                    .bind(0, list.get(0) + quantity)
                    .bind(1, cartId)
                    .bind(2, productId)
                    .execute());
        } else {
            String sql2 = "insert into cartitems(cartid, productid, quantity) values(?, ?, ?)";
            i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql2)
                    .bind(0, cartId)
                    .bind(1, productId)
                    .bind(2, quantity)
                    .execute());
        }
        return i == 1;
    }

    public boolean updateCart(long cartId, long productId, int quantity) {
        String sql;
        int i;
        if (quantity > 0) {
            sql = "update cartitems set quantity = ? where cartid = ? and productid = ?";
            i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                    .bind(0, quantity)
                    .bind(1, cartId)
                    .bind(2, productId)
                    .execute());
        } else {
            sql = "delete from cartitems where cartid = ? and productid = ?";
            i = JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                    .bind(0, cartId)
                    .bind(1, productId)
                    .execute());
        }
        return i == 1;
    }

    public List<CartItems> loadCart(long cartId) {
        String sql = "select * from cartitems where cartid = ?";
        List<CartItems> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, cartId)
                .mapToBean(CartItems.class).list());
        return list;
    }
}
