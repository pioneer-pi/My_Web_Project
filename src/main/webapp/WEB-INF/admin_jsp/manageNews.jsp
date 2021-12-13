<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/13
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<html>
<head>
    <title>管理新闻</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="/2019210179/Public_CSS/admin_news.css">
    <style>
        .context .back{
            padding: 0;
            margin: 20px 10px;
        }
        .context .back i{
            vertical-align: middle;
            display: inline-block;
            font-size: 25px;
            color: #4169E1;
        }
        .context .back a{
            text-decoration: none;
            transition: transform 0.3s;
        }
        .context .back a:hover{
            transform: scale(1.2);
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <%@ include file="/jsp/header.jsp"%>
    </div>
    <div class="navigation">
        <%@ include file="/jsp/navigation.jsp"%>
    </div>
    <div class="context">
        <div class="back">
            <a href="/2019210179/admin/welcome"><i class="material-icons">keyboard_backspace</i>返回主界面</a>
        </div>
        <div class="admin">
            <h2>Welcome to admin page!!! <span><strong>${admin.name}</strong></span> Please operate!</h2>
        </div>
        <div class="query">
            <form action="/2019210179/admin/queryNews" method="post">
                新闻编号: <input type="text" name="Nid">
                新闻标题: <input type="text" name="Title">
                新闻作者: <input type="text" name="Author">
                <button type="submit">查找</button>
            </form>
        </div>
        <div class="listAll">
            <div class="news">
                <h2><i class="material-icons">fiber_new</i>新闻栏</h2>
                <table>
                    <thead>
                    <tr>
                        <th>新闻Nid</th>
                        <th>新闻标题</th>
                        <th>新闻作者</th>
                        <th>加入时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${AllNews}" var="news">
                        <tr>
                            <td>${news.nid}</td>
                            <td><a href="/2019210179/listNewsByNid?Nid=${news.nid}">${news.title}</a></td>
                            <td>${news.author}</td>
                            <td>${news.add_date}</td>
                            <td><a href="/2019210179/admin/deleteNews?Nid=${news.nid}" class="operate">删除</a> <a href="/2019210179/admin/findNews?Nid=${news.nid}" class="operate">修改</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="add">
                    <a href="/2019210179/admin/transferAddNews">添加新闻</a>
                </div>
            </div>
        </div>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
