package com.filter;

import com.entity.Administrator;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/admin/*")
public class LoginFilter extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        Administrator administrator = (Administrator) request.getSession().getAttribute("admin");
        if (administrator != null){
            chain.doFilter(request,response);
        }
        else{
            response.sendRedirect(request.getContextPath()+"/index");
        }
    }
}
