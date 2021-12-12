package com.controller;

import com.service.AnnouncementService;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        获取数据库的数据
         */
        request.setAttribute("news5",newsService.list5News());
        request.setAttribute("announcements5",announcementService.list5Announcement());
        request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);
    }
}
