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
import java.util.List;

/*
此Servlet用于查找符合条件的servlet 并传给前端显示
 */
@WebServlet("/admin/queryNews")
public class QueryNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse  response) throws ServletException, IOException {
//        不可以将Nid转成int,因为一旦用户没有输入就会为空，转化String 到 int 就会报错
        String nid = request.getParameter("Nid");
        String title = request.getParameter("Title");
        String author =request.getParameter("Author");
        List<News> news = newsService.QueryNews(nid,title,author);
        request.setAttribute("AllNews",news);
        request.getRequestDispatcher("/WEB-INF/admin_jsp/manageNews.jsp").forward(request,response);
    }
}
