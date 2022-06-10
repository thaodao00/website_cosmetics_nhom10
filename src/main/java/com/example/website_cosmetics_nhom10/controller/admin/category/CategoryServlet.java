package com.example.website_cosmetics_nhom10.controller.admin.category;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryAdminServlet", value = "/admin-category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> list = CategoryService.getInstance().getAll();
        int index = Integer.parseInt (request.getParameter ("index"));
        int count = list.size ();
        int pageSize = 6;
        int endPage =0;
        endPage = count/ pageSize;
        if(count % pageSize !=0){
            endPage++;
        }
        request.setAttribute ("endPage",endPage);
        List<Category> category = CategoryService.getInstance ().paginationCategory (index, pageSize);
        request.setAttribute ("category",category);
        request.getRequestDispatcher ("/view/admin/category.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
