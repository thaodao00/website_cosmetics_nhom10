package com.example.website_cosmetics_nhom10.controller.admin.category;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.service.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateCategoryServlet", value = "/admin-update-category")
public class UpdateCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong (request.getParameter ("sid"));
        Category category = CategoryService.getInstance ().getCategoryById (id);
        request.setAttribute ("category", category);
        request.getRequestDispatcher ("/view/admin/updateCategory.jsp").forward (request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long sid = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        CategoryService.getInstance().updateCategory(name, sid);
        response.sendRedirect("admin-category?index=1");
    }
}
