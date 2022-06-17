package com.example.website_cosmetics_nhom10.controller.admin.contact;

import com.example.website_cosmetics_nhom10.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteContactServlet", value = "/deleteContact")
public class DeleteContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong (request.getParameter ("sid"));
        ContactService.getInstance ().deleteContactById (id);
        response.sendRedirect ("admin-contact?index=1");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
