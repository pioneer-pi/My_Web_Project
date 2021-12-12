package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listNewsByNid")
public class listNewsByNidServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Nid = Integer.parseInt(request.getParameter("Nid"));
        News news = newsService.listNewsByNid(Nid);
        request.setAttribute("news",news);
        request.getRequestDispatcher("/jsp/News/listNewsByNid.jsp").forward(request,response);
    }
}
