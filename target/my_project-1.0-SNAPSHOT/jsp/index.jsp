<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/13
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <c:url var="base" value="/" />
    <title>计算机科学与技术专业</title>
<%--Google的图标引入--%>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
<%-- 轮播图使用的BootStrap保存在Module.jsp中--%>
<%--该CSS文件用于新闻公告样式的实现和轮播图图片的设置--%>
    <link rel="stylesheet" href="/2019210179/Public_CSS/news.css">
    <style>
        .carousel-inner{
            width: 100%;
            height: 400px;
        }
        .carousel-inner .item img{
            width: 100%;
            height: 400px;
            object-fit: contain;
        }
    </style>
</head>
<body style="padding-right: 0">
<div class="container">
    <%-- header部分 --%>
    <div id="header">
        <%@include file="/jsp/header.jsp"%>
    </div>

    <%-- 导航栏部分  --%>
    <div class="navigation">
        <%@include file="/jsp/navigation.jsp"%>
    </div>

    <%-- 轮播图部分--%>
    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="/2019210179/resources/carousel_imgs/banner_01.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="/2019210179/resources/carousel_imgs/banner_02.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="/2019210179/resources/carousel_imgs/banner_03.jpg" alt="Third slide">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <%--新闻栏和公告栏部分--%>
    <div class="news">
        <%-- 新闻栏 --%>
        <div class="new">
            <div class="title">
                <h2><i class="material-icons">fiber_new</i>新闻栏</h2>
                <span><a href="/2019210179/listAllNews">查看更多</a></span>
            </div>
            <ul>
                <c:forEach items="${news5}" var="news">
                    <li><a href="/2019210179/listNewsByNid?Nid=${news.nid}">${news.title}<span>${news.add_date}</span></a></li>
                </c:forEach>
            </ul>
        </div>
        <%--公告栏--%>
        <div class="new announcement">
            <div class="title">
                <h2><i class="material-icons">fiber_new</i>公告栏</h2>
                <span><a href="/2019210179/listAllAnnouncements">查看更多</a></span>
            </div>
            <ul>
                <c:forEach items="${announcements5}" var="a">
                    <li><a href="/2019210179/listAnnouncementByAid?Aid=${a.aid}">${a.title}<span>${a.add_date}</span></a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <%--  footer部分--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
<script>
</script>
</html>
