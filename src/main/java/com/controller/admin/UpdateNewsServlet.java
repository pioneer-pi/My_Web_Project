package com.controller.admin;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/updateNews")
public class UpdateNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Nid = Integer.parseInt(request.getParameter("Nid"));
        String author = request.getParameter("Author");
        String title = request.getParameter("Title");
        String context = request.getParameter("Context");

        int flag = newsService.UpdateNews(Nid,author,title,context);

        request.getRequestDispatcher("/admin/manageNews").forward(request,response);
    }
}
