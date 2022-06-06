package com.example.website_cosmetics_nhom10.controller.web.CartController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.CartItems;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateCartServlet", value = "/api-update-cart")
public class UpdateCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        long pid = Long.parseLong(request.getParameter("pid"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        if (CartService.getInstance().updateCart(cart.getId(), pid, quantity)) {
            cart.setData(CartService.getInstance().loadCartData(cart.getId()));
            session.setAttribute("cart", cart);
            response.setStatus(HttpServletResponse.SC_ACCEPTED);
        }
        else
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);

    }
}
