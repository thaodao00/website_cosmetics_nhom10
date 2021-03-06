package com.example.website_cosmetics_nhom10.controller.web.ProductController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.beans.Review;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.ProductImagesService;
import com.example.website_cosmetics_nhom10.service.ProductService;
import com.example.website_cosmetics_nhom10.service.ReviewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/web-product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long pid = Long.parseLong(request.getParameter("id"));
        Product product = ProductService.getInstance().loadProductById(pid);
        product.setImages(ProductImagesService.getInstance().getByProductId(product.getId()));
        request.setAttribute("product", product);
        List<Product> products = ProductService.getInstance().getRelatedProducts(pid, 10);
        Collections.shuffle(products);
        request.setAttribute("products", products);
        List<Review> reviews = ReviewService.getInstance().getByProductId(pid);
        request.setAttribute("reviews", reviews);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/view/web/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
