package com.example.website_cosmetics_nhom10.controller.admin.account;

import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InsertAccountServlet", value = "/admin-insert-account")
public class InsertAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher ("/view/admin/insertAccount.jsp").forward (request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter ("account-name");
        String fullname = request.getParameter ("account-fullName");
        String password = request.getParameter ("account-password");
        String email = request.getParameter ("account-name");
        String phone = request.getParameter ("account-phone");
        String country = request.getParameter ("account-address");
        Long roleId = Long.parseLong (request.getParameter ("roleid"));
        String avatar = request.getParameter ("account-avatar");
        UserServices.getInstance ().insertAccount (username, fullname, password,email,phone,country,roleId,avatar);
        response.sendRedirect ("admin-account?index=1");
    }
}
