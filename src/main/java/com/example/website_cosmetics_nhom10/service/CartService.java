package com.example.website_cosmetics_nhom10.service;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.CartItems;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.dao.CartDao;

import java.util.HashMap;
import java.util.List;

public class CartService {
    private static CartService instance;

    private CartService() {

    }

    public static CartService getInstance() {
        if (instance == null)
            instance = new CartService();
        return instance;
    }

    public Cart createCart(Long userId) {
        return CartDao.getInstance().createCart(userId);
    }

    public Cart getByIdUser(Long userId) {
        return CartDao.getInstance().getByIdUser(userId);
    }

    public boolean checkCartExist(Long userId) {
        return CartDao.getInstance().checkCartExist(userId);
    }

    public boolean addToCart(long cartId, long productId, int quantity) {
        return CartDao.getInstance().addToCart(cartId, productId, quantity);
    }

    public boolean updateCart(long cartId, long productId, int quantity) {
        return CartDao.getInstance().updateCart(cartId, productId, quantity);
    }

    public List<CartItems> loadCart(long cartId) {
        return CartDao.getInstance().loadCart(cartId);
    }

    public HashMap<Product, Long> loadCartData(long cartId) {
        List<CartItems> list = loadCart(cartId);
        HashMap<Product, Long> cartData = new HashMap<>();
        for (CartItems ci : list)
            cartData.put(ProductService.getInstance().loadProductById(ci.getProductId()), (long) ci.getQuantity());
        return cartData;
    }
    public List<CartItems> getCartItemAll(){
        return CartDao.instance.getCartItemAll ();
    }
    public void deleteCartItemById(Long productid){
        CartDao.getInstance ().deleteCartItemById (productid);
    }
    public static void main(String[] args) {
        CartService.getInstance().addToCart(4, 3, 2);
    }
}
