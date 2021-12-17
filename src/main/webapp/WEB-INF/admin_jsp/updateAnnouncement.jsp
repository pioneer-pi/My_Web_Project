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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/2019210179/Public_CSS/addNews.css">
    <link rel="shortcut icon" href="/2019210179/resources/icon/hands_up.svg">
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
        <h2>更新公告</h2>
        <form action="/2019210179/admin/updateAnnouncement">
            <input type="hidden" name="Aid" value="${a.aid}"><br>
            <label>公告标题: <input type="text" name="Title" value="${a.title}"></label><br>
            <%--            <span>新闻内容: </span><input type="text" name="Context" value="${news.context}"><br>--%>
            <label>公告内容: </label>
            <div id="RTF"><p>${a.context}</p></div>
            <textarea name="Context" id="content" cols="70" rows="20" hidden></textarea>
            <button type="submit">提交</button>
            <a href="/2019210179/admin/manageAnnouncement">取消</a>
        </form>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/wangeditor@latest/dist/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor;
    var editor = new E('#RTF');

    //    获取隐藏控件<textarea>的id，用于显示内容，也方便后台获取内容
    var $text1 = $('#content');

    // 监控wangEditor中的内容变化，并将html内容同步更新到 textarea
    editor.config.onchange = function (html) {
        $text1.val(html);
    }
    editor.create();
    $text1.val(editor.txt.html())
</script>
</html>
