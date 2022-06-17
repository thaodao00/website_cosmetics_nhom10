package com.example.website_cosmetics_nhom10.controller.admin.contact;

import com.example.website_cosmetics_nhom10.beans.Contact;
import com.example.website_cosmetics_nhom10.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateContactServlet", value = "/admin-update-contacts")
public class UpdateContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong (request.getParameter ("sid"));
        Contact contact = ContactService.getInstance ().getContactById (id);
        request.setAttribute ("contact", contact);
        request.getRequestDispatcher ("/view/admin/updateContact.jsp").forward (request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong (request.getParameter ("contact-id"));
        String name = request.getParameter ("contact-name");
        String address = request.getParameter ("contact-address");
        String email = request.getParameter ("contact-email");
        String phone = request.getParameter ("contact-phone");
        ContactService.getInstance ().updateContact (name, address, email, phone, id);
        response.sendRedirect ("admin-contact?index=1");
    }
}
