<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/8
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Announcement_${announcement.aid}</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
    <style>
        *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
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
                <h2>${announcement.title}</h2>
                <p id="at"> <span id="add_date">${announcement.add_date}</span></p>
                <p>${announcement.context}</p>
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
