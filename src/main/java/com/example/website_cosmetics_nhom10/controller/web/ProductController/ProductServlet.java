package com.example.website_cosmetics_nhom10.controller.web.ProductController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.service.ProductService;
import com.example.website_cosmetics_nhom10.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/web-product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long pid = Long.parseLong(request.getParameter("id"));
        Product product = ProductService.getInstance().loadProductById(pid);
        request.setAttribute("product", product);
        List<Product> products = ProductService.getInstance().getRelatedProducts(pid, 10);
        request.setAttribute("products", products);
        List<Review> reviews = ReviewService.getInstance().getByProductId(pid);
        request.setAttribute("reviews", reviews);
        request.getRequestDispatcher("/view/web/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
