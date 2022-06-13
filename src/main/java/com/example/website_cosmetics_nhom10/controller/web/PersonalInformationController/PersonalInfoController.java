package com.example.website_cosmetics_nhom10.controller.web.PersonalInformationController;

import com.example.website_cosmetics_nhom10.beans.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "personalInformation", value = "/web-personalInformation")
public class PersonalInfoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        if (user == null)
            response.sendRedirect("web-login");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/view/web/personalInformation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
