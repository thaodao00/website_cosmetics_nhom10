package com.example.website_cosmetics_nhom10.controller.web.ReviewController;

import com.example.website_cosmetics_nhom10.beans.User;
import com.example.website_cosmetics_nhom10.service.ReviewService;
import com.example.website_cosmetics_nhom10.service.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReviewServlet", value = "/api-insert-review")
public class ReviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long uid = Long.parseLong(request.getParameter("uid"));
        Long pid = Long.parseLong(request.getParameter("pid"));
        String comment = request.getParameter("comment");
        if (uid != null)
            ReviewService.getInstance().insertReview(uid, pid, comment);
    }
}
