<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/13
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>管理公告</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="/2019210179/Public_CSS/admin_news.css">
    <style>
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
        <div class="listAll">
            <div class="news announcement">
                <h2><i class="material-icons">announcement</i>公告栏</h2>
                <table>
                    <thead>
                    <tr>
                        <th>公告Aid</th>
                        <th>公告标题</th>
                        <th>加入时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${AllAnnouncements}" var="a">
                        <tr>
                            <td>${a.aid}</td>
                            <td><a href="/2019210179/listAnnouncementByAid?Aid=${a.aid}">${a.title}</a></td>
                            <td>${a.add_date}</td>
                            <td><a href="/2019210179/admin/deleteAnnouncement?Aid=${a.aid}" class="operate">删除</a> <a href="/2019210179/admin/findAnnouncement?Aid=${a.aid}" class="operate">修改</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="add">
                    <a href="/2019210179/admin/transferAddAnnouncement">添加公告</a>
                </div>
            </div>
        </div>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
