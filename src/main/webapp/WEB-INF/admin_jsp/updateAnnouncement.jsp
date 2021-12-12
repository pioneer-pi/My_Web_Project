<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/11
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>更新您的公告</title>
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
        <form action="/2019210179/admin/updateAnnouncement">
            <input type="hidden" name="Aid" value="${a.aid}"><br>
            <span>公告标题: </span><input type="text" name="Title" value="${a.title}"><br>
            <%--            <span>新闻内容: </span><input type="text" name="Context" value="${news.context}"><br>--%>
            <span>公告内容: </span><textarea name="Context">${a.context}</textarea><br>
            <button type="submit">提交</button>
        </form>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
