package com.example.website_cosmetics_nhom10.controller.web.LoginRegisterController;

import com.example.website_cosmetics_nhom10.beans.Cart;
import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.CartService;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/web-login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/web/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (UserServices.checkLogin(username)) {
            User user = UserServices.login(username, password);
            if (user != null) {
                Cart cart = CartService.getInstance().getByIdUser(user.getId());
                if (cart != null) {
                    HttpSession session = request.getSession();
                    cart.setData(CartService.getInstance().loadCartData(cart.getId()));
                    session.setAttribute("cart", cart);
                    session.setAttribute("auth", user);
                    session.setAttribute("cData", cart.getDataAndQuantity());
                    response.sendRedirect("web-home");
//                    request.getRequestDispatcher("/view/web/home.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("error", "Wrong password");
                request.getRequestDispatcher("/view/web/login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "username isn't exist");
            request.getRequestDispatcher("/view/web/login.jsp").forward(request, response);
        }
    }
}
