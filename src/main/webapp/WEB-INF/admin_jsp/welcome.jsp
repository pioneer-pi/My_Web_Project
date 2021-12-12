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
    <style>
        .admin{
            width: 100%;
            text-align: center;
            margin: 30px 0;
            padding: 10px 0;
            background-color: #00BFFF;
        }
        .admin h2{
            color: white;
        }
        .admin span{
            color: red;
        }
        .news{
            margin-top: 30px;
            margin-bottom: 100px;
        }
        .news table{
            width: 100%;
            border-collapse: collapse;
        }
        .news table th,
        .news table td{
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .news tbody tr:nth-child(odd){
            background-color: #f2f2f2;
        }
        .news .operate{
            display: inline-block;
            border-radius: 8px;
            padding: 10px 15px;
            cursor: pointer;
            color: white;
            text-decoration: none;
            background-color: lightcoral;
        }
        .news a.operate:hover{
            background-color: red;
        }
        .add{
            margin: 10px;
            /*text-decoration: none;*/
        }
        .add a{
            float: right;
            display: block;
            background-color: #00BFFF;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
        }
        /*
        设置news图标的样式
         */
        .news h2 i{
            vertical-align: middle;
            display: inline-block;
            font-size: 40px;
            color: #00BFFF;
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
    <div class="admin">
        <h2>Welcome to admin page!!! <span><strong>${admin.name}</strong></span> Please operate!</h2>
    </div>
    <div class="find">
        <form action="#">
            <input type="text">
            <input type="text">
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
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
