package com.example.website_cosmetics_nhom10.controller.web.ProductListController;

import com.example.website_cosmetics_nhom10.beans.Product;
import com.example.website_cosmetics_nhom10.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "LoadMoreServlet", value = "/LoadMoreServlet")
public class LoadMoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/HTML;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String amount = request.getParameter("exits");
        List<Product> list = ProductService.getInstance().getProductWithLimit(Integer.parseInt(amount), 10);
        Collections.shuffle(list);
        PrintWriter out = response.getWriter();

        for (Product o : list) {
            out.println("<a href=\"web-product?id=" + o.getId() + "\" class=\"product col l-2-4 m-4 c-6\">\n" +
                    "                            <div class=\"product__item\">\n" +
                    "\n" +
                    "                               <div class=\"product__item-img__wrapper\">" +
                    "                                <img class=\"product__item-img\"\n" +
                    "                                     src=\"template\\web\\assets\\img\\thumbnail\\" + o.getThumbnailImg() + "\">\n" +
                    "                               </div>" +
                    "                                <h5 class=\"product__item-name\">\n" +
                    "                                        " + o.getName() + "\n" +
                    "                                </h5>\n" +
                    "                                <div class=\"product__item-price-wrapper\">\n" +
                    "                                    <h3 class=\"product__item-price product__item-price--old\">\n" +
                    "                                            $" + o.getPrice() + "\n" +
                    "                                    </h3>\n" +
                    "                                    <h3 class=\"product__item-price\">\n" +
                    "                                       $" + o.getDiscount() + "\n" +
                    "                                    </h3>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"star-link-sold-wrapper\">\n" +
                    "                                    <div class=\"star-link\">\n" +
                    "                                        <i class=\"fa fa-star star--fill\" aria-hidden=\"true\"></i>\n" +
                    "                                        <i class=\"fa fa-star star--fill\" aria-hidden=\"true\"></i>\n" +
                    "                                        <i class=\"fa fa-star star--fill\" aria-hidden=\"true\"></i>\n" +
                    "                                        <i class=\"fa fa-star star--fill\" aria-hidden=\"true\"></i>\n" +
                    "                                        <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\n" +
                    "                                    </div>\n" +
                    "                                    <div class=\"product__sold-number\"> " + o.getSold() + " sold</div>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"product__item-company-wrapper\">\n" +
                    "                                    <span class=\"product__item-company\">" + o.getCompanyName() + "</span>\n" +
                    "                                    <span class=\"product__item-origin-name\">" + o.getOriginName() + "</span>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </a>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
