package com.example.website_cosmetics_nhom10.controller.web.ProductController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductServlet", value = "/web-product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
        Long id = Long.parseLong(request.getParameter("id"));
        Product product = ProductsService.getInstance().getById(id);
        request.setAttribute("product", product);
//        session.setAttribute("product", product);

        request.getRequestDispatcher("/view/web/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
