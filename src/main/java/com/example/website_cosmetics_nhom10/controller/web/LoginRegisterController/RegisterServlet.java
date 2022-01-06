package com.example.website_cosmetics_nhom10.controller.web.LoginRegisterController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", value = "/web-register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/web/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = null;
        if (UserServices.getInstance().checkRegister(request.getParameter("password"), request.getParameter("confirmPassword"))) {
            try {
                if (UserServices.getInstance().checkUserExist(request.getParameter("username"))) {
                    user = new User();
                    user.setUsername(request.getParameter("username"));
                    user.setPassword(request.getParameter("password"));
                    user.setFullName(request.getParameter("fullName"));
                    user.setEmail(request.getParameter("email"));
                    user.setPhone(request.getParameter("phone"));
                    user.setCountry(request.getParameter("country"));
                    if (UserServices.getInstance().register(user)) {
                        User userResult = UserServices.getInstance().findByUsername(user.getUsername());
                        if (CartService.getInstance().checkCartExist(userResult.getId()))
                            CartService.getInstance().createCart(userResult.getId());
                        response.sendRedirect("web-login");
                    }
                } else {
                    request.setAttribute("error", "Username exist!!!");
                    request.getRequestDispatcher("/view/web/register.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("error", "Confirm password again!!!");
            request.getRequestDispatcher("/view/web/register.jsp").forward(request, response);
        }
    }
}

