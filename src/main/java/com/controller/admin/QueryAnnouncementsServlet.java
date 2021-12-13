package com.controller.admin;

import com.entity.Announcement;
import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/queryAnnouncements")
public class QueryAnnouncementsServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String aid = request.getParameter("Aid");
        String title = request.getParameter("Title");
        List<Announcement> announcements = announcementService.QueryAnnouncements(aid,title);
        request.setAttribute("AllAnnouncements",announcements);
        request.getRequestDispatcher("/WEB-INF/admin_jsp/manageAnnouncements.jsp").forward(request,response);
    }
}
