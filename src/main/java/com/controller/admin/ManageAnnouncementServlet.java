package com.controller.admin;

import com.service.AnnouncementService;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
该Servlet用于管理员管理后台的公告信息 ，查询所有的公告并递送给前端界面
 */
@WebServlet("/admin/manageAnnouncement")
public class ManageAnnouncementServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("AllAnnouncements",announcementService.listAnnouncement());
        request.getRequestDispatcher("/WEB-INF/admin_jsp/manageAnnouncements.jsp").forward(request,response);
    }
}
