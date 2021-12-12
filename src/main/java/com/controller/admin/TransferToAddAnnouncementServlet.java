package com.controller.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
该Servlet用于转发到新建Announcement的页面 由于该操作限定于管理员，且在WEB-INF下，因此需要转发实现
*/
@WebServlet("/admin/transferAddAnnouncement")
public class TransferToAddAnnouncementServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/admin_jsp/AddAnnouncement.jsp").forward(request,response);
    }
}
