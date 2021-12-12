package com.controller;

import com.entity.Teacher;
import com.service.ServiceFactory;
import com.service.TeacherService;
import com.service.impl.TeacherServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listTeacherById")
public class listTeacherByIdServlet extends HttpServlet {
    private TeacherService teacherService = ServiceFactory.getTeacherService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Teacher teacher = teacherService.getTeacher(id);
        request.setAttribute("teacher",teacher);
        request.getRequestDispatcher("/jsp/Teachers/listTeacherById.jsp").forward(request,response);
    }
}
