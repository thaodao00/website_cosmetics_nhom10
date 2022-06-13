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
        user.setUsername(request.getParameter("input-username"));
        user.setFullName(request.getParameter("input-fullname"));
        user.setEmail(request.getParameter("input-email"));
        user.setPhone(request.getParameter("input-phone"));
        user.setCountry(request.getParameter("select-country"));
        if (UserServices.getInstance().checkNamesake(user)) {
            request.setAttribute("error", "Username existed!");
            request.getRequestDispatcher("/view/web/personalInformation.jsp").forward(request, response);
        } else if (UserServices.getInstance().updateUser(user))
            response.sendRedirect("web-personalInformation");
    }
}
