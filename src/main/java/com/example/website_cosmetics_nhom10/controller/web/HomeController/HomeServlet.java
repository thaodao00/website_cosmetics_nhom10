package com.example.website_cosmetics_nhom10.controller.web.HomeController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/web-home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productsHot = ProductService.getInstance().getProductByTagName("Hot", 5);
        Collections.shuffle(productsHot);
        request.setAttribute("productsHot", productsHot);
        List<Product> productsNew = ProductService.getInstance().getProductByTagName("New", 5);
        Collections.shuffle(productsNew);
        request.setAttribute("productsNew", productsNew);
        List<Product> productsSale = ProductService.getInstance().getProductByTagName("Sale", 8);
        Collections.shuffle(productsSale);
        request.setAttribute("productsSale", productsSale);
        request.getRequestDispatcher("/view/web/home.jsp").forward(request, response);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        Cart cart;
        if (user != null)
            cart = CartService.getInstance().getByIdUser(user.getId());
        else
            cart = new Cart();
        cart.setData(CartService.getInstance().loadCartData(cart.getId()));
        session.setAttribute("cart", cart);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
