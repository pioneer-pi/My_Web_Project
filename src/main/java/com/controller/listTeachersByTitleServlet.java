package com.controller;

import com.service.ServiceFactory;
import com.service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listTeachersByTitle")
public class listTeachersByTitleServlet extends HttpServlet {
    private TeacherService teacherService = ServiceFactory.getTeacherService();

    @Override
    protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Title = request.getParameter("Title");
        request.setAttribute("teachers",teacherService.getTeachersByTitle(Title));
        request.getRequestDispatcher("/jsp/Teachers/listTeachersByTitle.jsp").forward(request,response);
    }
}
