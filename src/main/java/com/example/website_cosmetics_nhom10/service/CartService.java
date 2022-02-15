package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.dao.CartDao;

public class CartService {
    private static CartService instance;

    private CartService() {

    }

    public static CartService getInstance() {
        if (instance == null)
            instance = new CartService();
        return instance;
    }

    public static boolean createCart(Long userId) {
        return CartDao.getInstance().createCart(userId);
    }

    public static Cart getByIdUser(Long userId) {
        return CartDao.getInstance().getByIdUser(userId);
    }

    public static boolean checkCartExist(Long userId) {
        return CartDao.getInstance().checkCartExist(userId);
    }

    public static boolean addToCart(long cartId, long productId, int quantity) {
        return CartDao.getInstance().addToCart(cartId, productId, quantity);
    }
}
