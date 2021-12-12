<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/8
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>News_${news.nid}</title>
<%--    <link rel="stylesheet" href="/2019210179/jsp/Public_CSS/sidebar.css" type="text/css">--%>
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
                <p>${news.nid}</p>
                <p>${news.author}</p>
                <p>${news.title}</p>
                <p>${news.context}</p>
                <p>${news.add_date}</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <%@ include file="/jsp/footer.jsp"%>
    </div>
</div>
</body>
</html>
