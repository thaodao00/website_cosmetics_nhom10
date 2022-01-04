package com.example.website_cosmetics_nhom10.beans;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Product {
    private static Product instance;
    private Map<String, Products> data;

    public Product(){
        data = new HashMap<> ();
    }
    public static Product getInstance(){
        if(instance ==null){
            instance = new Product();
        }
        return instance;
    }
    public void put (Products product){
        data.put (product.getId (),product);
    }
    public Collection<Products> getData(){
//        put (new Products(1L,"High-Spreadability Fluid Primer  ","http://localhost:8080/website_cosmetics_nhom10_war/template/web/assets/img/ordinary/rdn-high-spreadability-fluid-primer-30ml-4.png","",1,1,2,"",5,"","","","",""));
        return data.values ();
    }
}
