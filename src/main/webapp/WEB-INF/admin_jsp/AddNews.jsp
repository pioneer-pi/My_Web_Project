<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/10
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>新增新闻</title>
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
        <form action="/2019210179/admin/addNews">
            <span>作者: </span><input type="text" name="Author" required><br>
            <span>标题: </span><input type="text" name="Title" required><br>
            <span>内容: </span><input type="text" name="Context"><br>
            <button type="submit">提交</button>
            <a href="/2019210179/admin/manageNews">取消</a>
        </form>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
