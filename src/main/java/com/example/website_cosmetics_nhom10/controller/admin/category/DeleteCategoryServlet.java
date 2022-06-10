package com.example.website_cosmetics_nhom10.controller.admin.category;

import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryServlet", value = "/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("sid"));
        CategoryService.getInstance ().deleteCategoryById (id);
        response.sendRedirect ("admin-category?index=1");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
