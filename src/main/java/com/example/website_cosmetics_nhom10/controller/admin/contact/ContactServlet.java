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
        int index = Integer.parseInt (request.getParameter ("index"));
        int count = list.size ();
        int pageSize = 6;
        int endPage =0;
        endPage = count/ pageSize;
        if(count % pageSize !=0){
            endPage++;
        }
        request.setAttribute ("endPage",endPage);
        request.setAttribute ("index", index);
        List<Contact> contacts = ContactService.getInstance ().paginationContact(index, pageSize);
        request.setAttribute ("list", contacts);
        request.getRequestDispatcher ("/view/admin/contact.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
