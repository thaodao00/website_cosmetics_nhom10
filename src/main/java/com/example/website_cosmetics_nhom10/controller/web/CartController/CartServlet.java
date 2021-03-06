package com.example.website_cosmetics_nhom10.controller.web.CartController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "CartServlet", value = "/web-cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null)
            cart = new Cart();
        HashMap<Product, Long> cartData = CartService.getInstance().loadCartData(cart.getId());
        cart.setData(cartData);
        session.setAttribute("cart", cart);
        request.setAttribute("cartData", cartData);
        request.getRequestDispatcher("/view/web/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
