package com.example.website_cosmetics_nhom10.controller.web.ProductListController;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductListServlet", value = "/web-products")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductService.getInstance().getTop10();
        List<Category> category = CategoryService.getInstance().getAllCategory();
        List<Product>sort = ProductService.getInstance().getAll();
        request.setAttribute ("category",category);
        request.setAttribute ("products",products);
        request.setAttribute ("sort",sort);
        request.getRequestDispatcher("/view/web/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet (request,response);
    }
}
