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
<%--    <link rel="stylesheet" href="/2019210179/jsp/Public_CSS/news.css">--%>
    <style>
        /*
该css部分用于实现index界面的一些效果包括：
新闻和公告模块样式
轮播图的基本样式
 */

        /*
        新闻和公告模块样式
        */
        div.news{
            display: flex;
            flex-direction: column;
        }

        .news div.new{
            width: 900px;
            margin-left: 150px;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .news div.new h2{
            border-bottom: 1px solid #555555;
        }
        .news div.new i{
            vertical-align: middle;
            display: inline-block;
            font-size: 40px;
            color: #00BFFF;
        }
        .news div.new ul li{
            list-style: none;
            border-bottom: 1px solid #ddd;
            line-height: 10px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .news div.new ul a{
            display: block;
            text-decoration: none;
            color: black;
            padding: 10px;
            transition: font-size 0.5s;
        }
        .news div.new a span{
            float: right;
        }
        .news div.new ul a:hover{
            color: #00BFFF;
            /*font-size: 20px;*/
        }
        /*轮播图CSS 用户规范Index界面的轮播图部分*/
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
        .navigation ul,ol{
            margin-bottom: 0;
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
                <img src="/2019210179/resources/carousel_imgs/banner_01.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="/2019210179/resources/carousel_imgs/banner_01.jpg" alt="Third slide">
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
            <h2><i class="material-icons">fiber_new</i>新闻栏</h2>
            <ul>
                <c:forEach items="${news5}" var="news">
                    <li><a href="/2019210179/listNewsByNid?Nid=${news.nid}">${news.title}<span>${news.add_date}</span></a></li>
                </c:forEach>
            </ul>
        </div>
        <%--公告栏--%>
        <div class="new announcement">
            <h2><i class="material-icons">announcement</i>公告栏</h2>
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
