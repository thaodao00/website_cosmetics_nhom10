package com.example.website_cosmetics_nhom10.controller.admin.product;

import com.example.website_cosmetics_nhom10.beans.*;
import com.example.website_cosmetics_nhom10.service.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "InsertProductServlet", value = "/admin-insert-products")
public class InsertProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Origin> origin = OriginService.getInstance ().getAll ();
        request.setAttribute ("origin", origin);
        List<Category> category = CategoryService.getInstance ().getAll ();
        request.setAttribute ("category", category);
        List<Company> company = CompanyService.getInstance().getAll ();
        request.setAttribute ("company", company);
        List<Tag> tag = TagService.getInstance ().getAll ();
        request.setAttribute ("tag", tag);
        request.getRequestDispatcher ("/view/admin/insertProducts.jsp").forward (request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sname = request.getParameter ("product-name");
        String sthumbnailImg = request.getParameter ("product-thumbnailImg");
        double sprice = Double.parseDouble (request.getParameter ("product-price"));
        double sdiscount = Double.parseDouble (request.getParameter ("product-discount"));
        int ssold = Integer.parseInt (request.getParameter ("product-quantity"));
        String sshortDescription = request.getParameter ("product-description-short");
        String slongDescription = request.getParameter ("product-description-long");
        double srate = Double.parseDouble (request.getParameter ("product-rate"));
        String sweight = request.getParameter ("product-weight");
        String sdimension = request.getParameter ("product-dimension");
        Long sorigin = Long.parseLong (request.getParameter ("origin"));
        Long scategory = Long.parseLong (request.getParameter ("category"));
        Long scompany = Long.parseLong (request.getParameter ("company"));
        Long stag = Long.parseLong (request.getParameter ("tag"));
        ProductService.getInstance ().insetProduct(sname, sthumbnailImg, sprice, sdiscount, ssold, sshortDescription, slongDescription, srate, sweight, sdimension, sorigin, scategory, scompany, stag);
        response.sendRedirect ("admin-products");
    }
}
