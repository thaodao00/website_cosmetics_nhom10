package com.example.website_cosmetics_nhom10.controller.admin.contact;

import com.example.website_cosmetics_nhom10.beans.Contact;
import com.example.website_cosmetics_nhom10.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ContactAdminServlet", value = "/admin-contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contact>list = ContactService.getInstance ().getAl ();
        request.setAttribute ("contact", list);
        request.getRequestDispatcher ("/view/admin/contact.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
