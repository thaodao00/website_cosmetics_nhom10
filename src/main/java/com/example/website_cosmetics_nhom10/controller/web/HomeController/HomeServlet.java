package com.example.website_cosmetics_nhom10.controller.web.HomeController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/web-home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productsHot  = ProductsService.getInstance ().getTagName ("Hot");
        request.setAttribute ("productsHot", productsHot);
        List<Product> productsNew  = ProductsService.getInstance ().getTagName ("New");
        request.setAttribute ("productsNew", productsNew);
        List<Product> productsSale  = ProductsService.getInstance ().getTagName ("Sale");
        request.setAttribute ("productsSale", productsSale);
        request.getRequestDispatcher("/view/web/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
