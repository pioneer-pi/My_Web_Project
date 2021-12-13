package com.controller.admin;

import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
该Servlet用户接受来自/WEB-INF/admin_jsp/AddAnnouncement.jsp传来的数据 然后生成新的News写入数据库中
 */

@WebServlet("/admin/addAnnouncement")
public class AddAnnouncementServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("Title");
        String context = request.getParameter("Context");
        int flag = announcementService.InsertAnnouncement(title,context);
        /*
        考虑使用重定向还是转发
         */
//        response.sendRedirect(request.getContextPath() + "/admin/welcome");
        request.getRequestDispatcher("/admin/manageAnnouncement").forward(request,response);
    }
}
