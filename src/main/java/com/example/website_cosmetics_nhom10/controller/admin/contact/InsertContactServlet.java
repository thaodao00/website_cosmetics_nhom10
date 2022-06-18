package com.example.website_cosmetics_nhom10.controller.admin.contact;

import com.example.website_cosmetics_nhom10.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InsertContactServlet", value = "/admin-insert-contacts")
public class InsertContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher ("/view/admin/insertContact.jsp").forward (request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter ("contact-name");
        String address = request.getParameter ("contact-address");
        String email = request.getParameter ("contact-email");
        String phone = request.getParameter ("contact-phone");
        ContactService.getInstance ().insertContact (name, address, email, phone);
        response.sendRedirect ("admin-contact?index=1");
    }
}
