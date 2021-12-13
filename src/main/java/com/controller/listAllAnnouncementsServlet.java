package com.controller;


import com.entity.Announcement;
import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/listAllAnnouncements")
public class listAllAnnouncementsServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Announcement> announcements = announcementService.listAnnouncement();
        request.setAttribute("announcements",announcements);
        request.getRequestDispatcher("/jsp/Announcement/listAllAnnouncements.jsp").forward(request,response);

    }
}
