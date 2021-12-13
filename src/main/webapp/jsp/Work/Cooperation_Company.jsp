<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>合作公司-计算机科学与技术专业</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
</head>
<body>
<div class="container">
    <div class="header">
        <%@include file="/jsp/header.jsp"%>
    </div>
    <div class="navigation">
        <%@include file="/jsp/navigation.jsp"%>
    </div>
    <div class="context">
        <div class="title">
        </div>
        <div class="article">
            <div class="blank1">
                <h2>就业指南</h2>
                <ul>
                    <li><a href="/2019210179/jsp/Work/Work_Direction.jsp">就业方向</a></li>
                    <li><a href="/2019210179/jsp/Work/Work_Prospect.jsp">就业前景</a></li>
                    <li><a href="/2019210179/jsp/Work/Cooperation_Company.jsp">合作公司</a></li>
                </ul>
            </div>
            <div class="blank2">
                <h2>合作公司</h2>
                <p><strong>合作公司：</strong>
                    腾讯 阿里 创业
                <p>专业咨询电话：0451-82191523</p>
            </div>
            <div class="blank3"></div>
        </div>
    </div>
    <%-- footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
