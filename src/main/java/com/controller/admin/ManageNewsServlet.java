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
该Servlet用于管理员管理后台的新闻信息 ，查询所有的公告并递送给前端界面
 */
@WebServlet("/admin/manageNews")
public class ManageNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("AllNews",newsService.listNews());
        request.getRequestDispatcher("/WEB-INF/admin_jsp/manageNews.jsp").forward(request,response);
    }
}
