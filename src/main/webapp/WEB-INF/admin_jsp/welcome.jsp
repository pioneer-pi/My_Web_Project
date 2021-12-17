<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/10
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>管理员页面</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link rel="shortcut icon" href="/2019210179/resources/icon/hands_up.svg">
    <link rel="stylesheet" href="/2019210179/Public_CSS/admin_news.css">
    <style>
        .context .manage{
            position: relative;
        }
        .context .manage ul{
            list-style: none;
            position: relative;
            text-align: center;
        }
        .context .manage ul li{
            padding: 20px;
        }
        .context .manage a{
            border-radius: 8px;
            display: inline-block;
            text-decoration: none;
            background-color: #4169E1;
            color: white;
            padding: 50px 80px;
            box-shadow: 0 8px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            transition: transform 0.5s;
            font-size: 20px;
        }
        .context .manage a:hover{
            transform: translateY(10px);
            box-shadow: 0 12px 12px 0 rgba(0,0,0,0.2),0 8px 24px 0 rgba(0,0,0,0.19);
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
        <div class="admin">
            <h2>Welcome to admin page!!! <span><strong>${admin.name}</strong></span> Please operate!</h2>
        </div>
        <div class="manage">
            <ul>
                <li><a href="/2019210179/admin/manageNews">管理新闻</a></li>
                <li><a href="/2019210179/admin/manageAnnouncement">管理公告</a></li>
            </ul>
        </div>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
