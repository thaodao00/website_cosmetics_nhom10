package com.example.website_cosmetics_nhom10.controller.web.ProductListController;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductListServlet", value = "/web-products")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Products> products = ProductsService.getInstance().getTop10 ();
        List<Category> category = CategoryService.getInstance().getAllCategory ();
        request.setAttribute ("category",category);
        request.setAttribute ("products",products);
        request.getRequestDispatcher("/view/web/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet (request,response);
    }
}
