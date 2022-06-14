package com.example.website_cosmetics_nhom10.controller.web.LoginRegisterController;

import com.example.website_cosmetics_nhom10.beans.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginRedirectServlet", value = "/api-login")
public class LoginRedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        if (user != null) {
            switch ((int) user.getRoleId()) {
                case 1:
                    response.sendRedirect("web-personalInformation");
                    break;
                case 2:
                    response.sendRedirect("admin-home");
                    break;
                default:
                    response.sendRedirect("web-home");
            }
        } else
            response.sendRedirect("web-login");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
