package com.example.website_cosmetics_nhom10.controller.web.ProductController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductServlet", value = "/Add")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Long id = Long.parseLong (request.getParameter ("id"));

        HttpSession session = request.getSession ();
        Product product =(Product)session.getAttribute ("product");
        if(product == null){
           product = Product.getInstance ();
        }
        Products p = ProductsService.getInstance ().getById (id);

        product.put (p);

        session.setAttribute ("product",product);

        response.sendRedirect ("/web-product");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
