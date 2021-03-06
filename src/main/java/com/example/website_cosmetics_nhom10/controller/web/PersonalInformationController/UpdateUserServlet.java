package com.example.website_cosmetics_nhom10.controller.web.PersonalInformationController;

import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", value = "/web-update-user")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        User sub = UserServices.getInstance().findById(user.getId());
        sub.setUsername(request.getParameter("input-username"));
        sub.setFullName(request.getParameter("input-fullname"));
        sub.setEmail(request.getParameter("input-email"));
        sub.setPhone(request.getParameter("input-phone"));
        sub.setCountry(request.getParameter("select-country"));
        if (UserServices.getInstance().checkNamesake(sub)) {
            request.setAttribute("error", "Username existed!");
            request.setAttribute("user", user);
            request.getRequestDispatcher("/view/web/personalInformation.jsp").forward(request, response);
        } else if (UserServices.getInstance().updateUser(sub)) {
            session.setAttribute("auth", sub);
            response.sendRedirect("web-personalInformation");
        }
    }
}
