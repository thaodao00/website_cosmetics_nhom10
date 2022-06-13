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
import java.util.List;

@WebServlet(name = "AccountServlet", value = "/admin-account")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = UserServices.getInstance ().getAll ();
        int count = list.size ();
        int index = Integer.parseInt (request.getParameter ("index"));
        int pageSize = 15;
        int endPage =0;
        endPage = count/ pageSize;
        if(count % pageSize !=0){
            endPage++;
        }
        request.setAttribute ("endPage",endPage);
        request.setAttribute ("index", index);
        List<User> listUser = UserServices.getInstance ().paginationAccount (index, pageSize);
        request.setAttribute ( "listUser", listUser);
        request.getRequestDispatcher ("/view/admin/account.jsp").forward (request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
