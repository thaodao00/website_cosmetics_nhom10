package com.example.website_cosmetics_nhom10.controller.web.ProductListController;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Products;
import com.example.website_cosmetics_nhom10.dao.ProductDao;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType ("text/html; charset = UTF-8");
        String cateId = request.getParameter ("categoryId");
        Long iCateId = Long.parseLong (cateId);
        List<Products> products = ProductsService.getInstance ().getProductByCateId (iCateId);
        List<Category> category = CategoryService.getInstance().getAllCategory ();
        request.setAttribute ("products",products);
        request.setAttribute ("category",category);
        request.setAttribute ("tag",cateId);
        request.getRequestDispatcher ("/view/web/products.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
