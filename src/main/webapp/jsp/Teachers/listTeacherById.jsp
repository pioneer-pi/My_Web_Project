<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/5
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${teacher.name}-老师介绍</title>
    <link rel="stylesheet" href="/2019210179/jsp/Public_CSS/sidebar.css" type="text/css">
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
        <div class="article">
            <div class="blank1">
                <h2>教师队伍</h2>
                <ul>
                    <li><a href="/2019210179/listTeachersByTitle?Title=讲师">讲师</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=副教授">副教授</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=教授">教授</a></li>
                </ul>
            </div>
            <div class="blank2">
                <p>${teacher.id}</p>
                <p>${teacher.name}</p>
                <p>${teacher.introduce}</p>
            </div>
            <div class="blank3">
            </div>
        </div>
    </div>
<%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
