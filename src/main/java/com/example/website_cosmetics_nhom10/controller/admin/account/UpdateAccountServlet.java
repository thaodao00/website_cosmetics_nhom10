package com.example.website_cosmetics_nhom10.controller.admin.account;

import com.example.website_cosmetics_nhom10.beans.Category;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.CategoryService;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateAccountServlet", value = "/admin-update-account")
public class UpdateAccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong (request.getParameter ("sid"));
        User account = UserServices.getInstance ().findById (id);
        request.setAttribute ("user", account);
        request.getRequestDispatcher ("/view/admin/updateAccount.jsp").forward (request, response);
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
       Long sid = Long.parseLong (request.getParameter ("account-id"));
        UserServices.getInstance ().updateAccount (username, fullname, password, email, phone, country, roleId, avatar, sid);
        response.sendRedirect("admin-account?index=1");
    }
}
