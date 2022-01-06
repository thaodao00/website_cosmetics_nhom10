package com.example.website_cosmetics_nhom10.controller.web;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.dao.ProductDao;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SerchController", value = "/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType ("text/HTML;charset=UTF-8");
        request.setCharacterEncoding ("UTF-8");
        String txtSearch = request.getParameter ("txt");
        List<Products> list= ProductsService.getInstance ().searchByName (txtSearch);
        List<Category> category = CategoryService.getInstance().getAllCategory ();
        request.setAttribute ("products", list);
        request.setAttribute ("category",category);
        request.getRequestDispatcher ("/view/web/products.jsp").forward (request,response);
    }
}
