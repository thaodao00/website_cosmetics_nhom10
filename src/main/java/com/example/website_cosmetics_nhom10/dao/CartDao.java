package com.example.website_cosmetics_nhom10.dao;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.CartItems;
import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.database.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CartDao {
    public static CartDao instance;

    public CartDao() {

    }

    public static CartDao getInstance() {
        if (instance == null)
            instance = new CartDao();
        return instance;
    }

    public Cart createCart(Long userId) {
        String sql = "insert into cart(userid) values(?)";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(sql)
                .bind(0, userId)
                .execute());
        return getByIdUser(userId);
    }

    public Cart getByIdUser(Long userId) {
        List<Cart> list = JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from cart where userid = ?")
                .bind(0, userId)
                .mapToBean(Cart.class).list());
        if (list.size() > 0)
            return list.get(0);
        else return null;
    }

    public boolean checkCartExist(Long userId) {
        String sql = "select * from cart where userid = ?";
        List<Cart> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, userId)
                .mapToBean(Cart.class).list());
        return list.size() < 1;
    }

    public boolean addToCart(long cartId, long productId, int quantity) {
        List<Integer> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select quantity from cartitems where cartid = ? and productid = ?")
                        .bind(0, cartId)
                        .bind(1, productId)
                        .mapTo(Integer.class).list());
        int currentQuantity = list.size() > 0 ? list.get(0) : 0;
        int i;
        if (currentQuantity == 0) {
            i = JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate("insert into cartitems(cartid, productid, quantity) values(?, ?, ?)")
                            .bind(0, cartId)
                            .bind(1, productId)
                            .bind(2, quantity)
                            .execute());
        } else {
            i = JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate("update cartitems set quantity = ? where cartid = ? and productid = ?")
                            .bind(0, currentQuantity + quantity)
                            .bind(1, cartId)
                            .bind(2, productId)
                            .execute());
        }
        return i == 1;
    }

    public boolean updateCart(long cartId, long productId, int quantity) {
        int i;
        if (quantity > 0) {
            i = JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate("update cartitems set quantity = ? where cartid = ? and productid = ?")
                            .bind(0, quantity)
                            .bind(1, cartId)
                            .bind(2, productId)
                            .execute());
        } else {
            i = JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate("delete from cartitems where cartid = ? and productid = ?")
                            .bind(0, cartId)
                            .bind(1, productId)
                            .execute());
        }
        return i == 1;
    }

    public List<CartItems> loadCart(long cartId) {
        String sql = "select * from cartitems where cartid = ? order by productid desc";
        List<CartItems> list = JDBIConnector.get().withHandle(handle -> handle.createQuery(sql)
                .bind(0, cartId)
                .mapToBean(CartItems.class).list());
        return list;
    }
    public List<CartItems> getCartItemAll() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from cartitems").mapToBean(CartItems.class).stream().collect(Collectors.toList()));
    }
    public List<Cart> getAll() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("select * from cart").mapToBean(Cart.class).stream().collect(Collectors.toList()));
    }
    public void deleteCartItemById(Long productid) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("DELETE FROM cartitems WHERE productid = ?").bind (0, productid).execute ());
    }
    public void deleteCartById(Long userid) {
        JDBIConnector.get ().withHandle (handle ->
                handle.createUpdate ("DELETE FROM cart WHERE userid = ?").bind (0, userid).execute ());
    }
}
