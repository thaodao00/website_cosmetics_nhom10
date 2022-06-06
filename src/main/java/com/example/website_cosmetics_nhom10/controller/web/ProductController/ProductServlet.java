package com.example.website_cosmetics_nhom10.controller.web.ProductController;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/web-product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Product product = ProductsService.getInstance().getById(id);
        request.setAttribute("product", product);
        List<Products> products = ProductsService.getInstance().getTop10 ();
        request.setAttribute ("products",products);
        request.getRequestDispatcher("/view/web/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
