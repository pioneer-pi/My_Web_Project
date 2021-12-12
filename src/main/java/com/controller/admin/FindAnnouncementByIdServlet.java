package com.controller.admin;

import com.entity.Announcement;
import com.entity.News;
import com.service.AnnouncementService;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/findAnnouncement")
public class FindAnnouncementByIdServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Aid = Integer.parseInt(request.getParameter("Aid"));
        Announcement announcement = announcementService.listAnnouncementByNid(Aid);
        request.setAttribute("a",announcement);
        request.getRequestDispatcher("/WEB-INF/admin_jsp/updateAnnouncement.jsp").forward(request,response);
    }

}
