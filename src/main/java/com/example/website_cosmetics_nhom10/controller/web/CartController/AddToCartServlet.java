package com.example.website_cosmetics_nhom10.controller.web.CartController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCartServlet", value = "/api-add-to-cart")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        long pid = Long.parseLong(request.getParameter("pid"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("auth");
        if (cart == null)
            cart = CartService.getInstance().getByIdUser(user.getId());
        if (CartService.getInstance().addToCart(cart.getId(), pid, quantity)) {
            cart.setData(CartService.getInstance().loadCartData(cart.getId()));
            session.setAttribute("cart", cart);
            response.getWriter().println(cart.getData().size());
            response.setStatus(HttpServletResponse.SC_ACCEPTED);
        }
        else
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);

    }
}
