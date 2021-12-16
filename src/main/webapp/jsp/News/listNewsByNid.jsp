<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/8
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>News_${news.nid}</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
    <style>
        .blank2 h2{
            font-family: 微软雅黑;
            /*padding: 10px;*/
        }
        .blank2 p{
            text-indent: 2px;
            padding: 5px;
        }
        #at{
            text-align: center;
            font-size: 15px;
        }
        .blank2 img{
            position: relative;
            left: 150px;
        }
        .blank2 img{
            width: 600px;
            height: 400px;
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
            <div class="blank2">
                <h2>${news.title}</h2>
                <p id="at"><span id="author">作者: ${news.author} </span><span id="add_date"> 时间: ${news.add_date}</span></p>
                <div class="img">
                    <c:if test="${news.nid <=6 }">
                        <img src="/2019210179/resources/News/News${news.nid}.png" alt="新闻图片">
                    </c:if>
                    <c:if test="${news.nid > 6}">
                        <img src="https://picsum.photos/250?random=1" alt="face">
                    </c:if>
                </div>
                <p>${news.context}</p>
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
