package com.controller;

import com.entity.Administrator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String url;
        if ("admin".equals(name) && "123456".equals(password)){
            Administrator administrator = new Administrator(name,password);
            request.getSession().setAttribute("admin",administrator);
            url = "/admin/welcome";
        }
        else {
            url = "/index";
        }
        response.sendRedirect(request.getContextPath()+url);
    }
}
