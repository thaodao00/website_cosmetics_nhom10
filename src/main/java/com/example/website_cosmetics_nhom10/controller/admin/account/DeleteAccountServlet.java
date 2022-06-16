package com.example.website_cosmetics_nhom10.controller.admin.account;

import com.example.website_cosmetics_nhom10.beans.*;
import com.example.website_cosmetics_nhom10.dao.ProductDao;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.InventoryService;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteAccountServlet", value = "/deleteAccount")
public class DeleteAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("sid"));
        User user = UserServices.getInstance ().findById (id);
        List<Cart> listCart = CartService.getInstance ().getAll ();
        List<CartItems> listItems = CartService.getInstance ().getCartItemAll ();

        for(Cart item : listCart)
            if(item.getUserId () == user.getId ()) {
                for (CartItems item1 : listItems)
                    if (item1.getCartId () == item.getId ())
                        CartService.getInstance ().deleteCartItemById (item1.getCartId ());
                CartService.getInstance ().deleteCartById (item.getUserId ());
            }
        UserServices.getInstance ().deleteAccountById (id);
        response.sendRedirect ("admin-account?index=1");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
