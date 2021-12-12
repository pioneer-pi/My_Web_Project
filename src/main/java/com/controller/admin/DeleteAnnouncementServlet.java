package com.controller.admin;

import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/deleteAnnouncement")
public class DeleteAnnouncementServlet extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Aid = Integer.parseInt(request.getParameter("Aid"));

        int flag = announcementService.DeleteAnnouncement(Aid);

        request.getRequestDispatcher("/admin/welcome").forward(request,response);
    }
}
