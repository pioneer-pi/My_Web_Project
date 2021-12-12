package com.controller.admin;

import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.naming.Context;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/updateAnnouncement")
public class UpdateAnnouncementServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Aid = Integer.parseInt(request.getParameter("Aid"));
        String title = request.getParameter("Title");
        String context = request.getParameter("Context");

        int flag = announcementService.UpdateAnnouncement(Aid,title,context);

        request.getRequestDispatcher("/admin/welcome").forward(request,response);
    }
}
