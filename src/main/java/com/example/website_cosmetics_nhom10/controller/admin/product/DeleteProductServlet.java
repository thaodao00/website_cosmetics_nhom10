package com.example.website_cosmetics_nhom10.controller.admin.product;

import com.example.website_cosmetics_nhom10.beans.CartItems;
import com.example.website_cosmetics_nhom10.beans.Inventory;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.dao.CartDao;
import com.example.website_cosmetics_nhom10.dao.ProductDao;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.InventoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DeleteProductServlet", value = "/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("sid"));
        Product p = ProductDao.getInstance ().getProductById (id);
        List<CartItems>items = new ArrayList<> ();
        List<CartItems> list = CartDao.getInstance ().getCartItemAll ();
        List<Inventory> listI = InventoryService.getInstance ().getAll ();
        for(CartItems item : list){
            if(item.getProductId ()==p.getId ()){
                items.add (item);
                for(CartItems item1 : items){
                    CartService.getInstance ().deleteCartItemById (item1.getProductId ());
                }
            }
        }
        for(Inventory item : listI)
            if(item.getProductId () == p.getId ())
                InventoryService.getInstance ().deleteinventoryId (item.productId);

        ProductService.getInstance ().deleteProductById(id);
        response.sendRedirect ("admin-products?index=1");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
