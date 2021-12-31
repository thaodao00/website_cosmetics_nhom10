package com.example.website_cosmetics_nhom10.beans;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart {
    private static Cart instance;
    Long id;
    double total;
    Map<Long, CartItems> cartItems;
    public Cart(){
    }
    public Cart(Long id, double total) {
        this.id = id;
        this.total = total;
        cartItems = new HashMap<>();
    }
    public static Cart getInstance(){
        if(instance == null){
            instance = new Cart ();
        }
        return instance;
    }
   //get cartItem by id;

    public CartItems get(String id){
        return  cartItems.get(id);
    }
    //remove cartItems

    public void remove (String id){
        cartItems.remove (id);
    }
    //getTotal
    public double total(){
        double total = 0;
        for( CartItems cartItem : cartItems.values () ){
            total += cartItem.getTotal ();
        }
        return total;
    }
//    get list cartItems

    public Collection<CartItems> getData(){
        return cartItems.values ();
    }


}
