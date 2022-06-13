package com.example.website_cosmetics_nhom10.controller.admin.product;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductsAdminServlet", value = "/admin-products")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getInstance().getAll ();
        int index = Integer.parseInt (request.getParameter ("index"));
        int count = list.size ();
        int pageSize = 20;
        int endPage =0;
        endPage = count/ pageSize;
        if(count % pageSize !=0){
            endPage++;
        }
        request.setAttribute ("endPage",endPage);
        request.setAttribute ("index", index);
        List<Product> product = ProductService.getInstance().paginationProduct (index,pageSize);
        request.setAttribute ("products",product);
        request.getRequestDispatcher ("/view/admin/products.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}