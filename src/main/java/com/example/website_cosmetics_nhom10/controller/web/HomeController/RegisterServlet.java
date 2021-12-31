package com.example.website_cosmetics_nhom10.controller.web.HomeController;

import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", value = "/api-register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = null;
        if (UserServices.getInstance().checkRegister(request.getParameter("password"), request.getParameter("confirmPassword"))) {
            user = new User();
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            try {
                if (UserServices.getInstance().register(user)) {
                    request.setAttribute("success", "Register successfully");
                    request.getRequestDispatcher("web-home").forward(request, response);
                }
            } catch (SQLException e) {
                request.setAttribute("error", "Account already exists!!!");
                request.getRequestDispatcher("web-home").forward(request, response);
            }
        }
    }
}
