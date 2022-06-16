package com.example.website_cosmetics_nhom10.controller.web.ContactController;

import com.example.website_cosmetics_nhom10.beans.Contact;
import com.example.website_cosmetics_nhom10.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContactServlet", value = "/web-contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contact> list = ContactService.getInstance ().getAl ();
        request.setAttribute ("contact", list);
        request.getRequestDispatcher("view/web/contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
