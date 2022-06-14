package com.example.website_cosmetics_nhom10.controller.admin.category;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DeleteCategoryServlet", value = "/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("sid"));
        Category c = CategoryService.getInstance ().getCategoryById (id);
        List<Product> listP = new ArrayList<> ();
        List<Product> list = ProductService.getInstance ().getAll ();
        for(Product p : list){
            if(p.getCategoryId ()== c.getId ()){
                listP.add (p);
                for(Product p1 : listP){
                    ProductService.getInstance ().updatecCategoryProduct (1L, p1.getId ());
                }
            }
        }
        CategoryService.getInstance ().deleteCategoryById (id);
        response.sendRedirect ("admin-category?index=1");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
