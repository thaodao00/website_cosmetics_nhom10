package com.example.website_cosmetics_nhom10.controller.web;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController", value = "/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType ("text/HTML;charset=UTF-8");
        request.setCharacterEncoding ("UTF-8");
        String txtSearch = request.getParameter ("txt");
        List<Product> list= ProductService.getInstance ().searchByName (txtSearch);
        List<Category> category = CategoryService.getInstance().getAll ();
        request.setAttribute ("products", list);
        request.setAttribute ("category",category);
        request.getRequestDispatcher ("/view/web/products.jsp").forward (request,response);
    }
}
