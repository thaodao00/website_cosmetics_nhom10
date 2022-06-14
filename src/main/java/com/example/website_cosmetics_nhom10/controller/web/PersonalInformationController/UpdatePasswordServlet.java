package com.example.website_cosmetics_nhom10.controller.web.PersonalInformationController;

import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdatePasswordServlet", value = "/web-update-password")
public class UpdatePasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("auth");
        String currentPass = request.getParameter("input-current-password");
        String newPass = request.getParameter("input-new-password");
        String confirmPass = request.getParameter("input-confirm-password");
        if (!newPass.equals(confirmPass)) {
            request.setAttribute("error", "Confirm password again!");
            request.getRequestDispatcher("/view/web/personalInformation.jsp").forward(request, response);
        } else if (UserServices.getInstance().updatePassword(user.getId(), currentPass, newPass))
            response.sendRedirect("web-personalInformation");
        else {
            request.setAttribute("error", "Wrong password!");
            request.getRequestDispatcher("/view/web/personalInformation.jsp").forward(request, response);
        }
    }
}
