<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/12
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>公告</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
    <link rel="shortcut icon" href="/2019210179/resources/icon/hands_up.svg">
    <style>
        *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
        .blank2 ul{
            list-style: none;
        }
        .blank2 li{
            border-bottom: 1px solid #dddddd;
        }
        .blank2 ul a{
            display: block;
            text-decoration: none;
            transition: transform 0.3s;
        }
        .blank2 ul a:hover{
            color: #4169E1;
            transform: scale(1.05);
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
        <div class="article">
            <div class="blank1">
                <h2>新闻公告</h2>
                <ul>
                    <li><a href="/2019210179/listAllNews">新闻</a></li>
                    <li><a href="/2019210179/listAllAnnouncements">公告</a></li>
                </ul>
            </div>
            <div class="nav">
            </div>
            <div class="blank2">
                <h2>所有公告</h2>
                <ul>
                    <c:forEach items="${announcements}" var="a">
                        <li><a href="/2019210179/listAnnouncementByAid?Aid=${a.aid}">${a.aid}.  ${a.title}</a></li><br>
                    </c:forEach>
                </ul>
            </div>
            <div class="blank3">

            </div>
        </div>
    </div>
    <%--footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
