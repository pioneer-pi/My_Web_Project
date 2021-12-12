package com.controller.admin;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/findNews")
public class FindNewsByIdServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Nid = Integer.parseInt(request.getParameter("Nid"));
        News news = newsService.listNewsByNid(Nid);
        request.setAttribute("news",news);
        request.getRequestDispatcher("/WEB-INF/admin_jsp/updateNews.jsp").forward(request,response);
    }
}
