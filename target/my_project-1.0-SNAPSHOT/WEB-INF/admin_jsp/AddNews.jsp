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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/2019210179/Public_CSS/addNews.css">
    <style>
        /*
input 样式
 */
        .context h2{
            text-align: center;
        }
        .context form{
            margin: 10px;
            margin-top: 30px;
        }
        .context span{
            font-family: 宋体;
        }
        .context input{
            margin: 5px;
            outline: none;
            border: none;
            border-bottom: 2px solid black;
        }

        .context input:valid,
        .context input:focus{
            border-bottom: 2px solid #00BFFF;
        }
        /*
        button样式 (提交和取消)
         */
        .context button{
            padding: 15px 25px;
            margin: 10px;
            background-color: #00E676;
            color: white;
            border: none;
            border-radius: 8px;
            transition: transform 0.5s;
            box-shadow: 0 8px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        }
        .context button:hover{
            background-color: 	#40E0D0;
            transform: translateY(5px);
            box-shadow: 0 12px 12px 0 rgba(0,0,0,0.2),0 8px 24px 0 rgba(0,0,0,0.19);
        }
        .context a{
            display: inline-block;
            text-decoration: none;
            padding: 16px 25px;
            margin: 10px;
            background-color: #F08080;
            color: white;
            border: none;
            border-radius: 8px;
            transition: transform 0.5s;
            box-shadow: 0 8px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        }
        .context a:hover{
            text-decoration: none;
            color: white;
            background-color: #FF7F50;
            transform: translateY(5px);
            box-shadow: 0 12px 12px 0 rgba(0,0,0,0.2),0 8px 24px 0 rgba(0,0,0,0.19);
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
        <h2>添加新闻</h2>
        <form action="/2019210179/admin/addNews" method="post">
            <label id="author">作者: <input type="text" name="Author" required></label><br>
            <label id="title">标题: <input type="text" name="Title" required></label><br>
            <label>内容: </label>
            <div id="RTF"><p></p></div>
            <textarea name="Context" id="content" cols="70" rows="20" hidden></textarea>
            <button type="submit" id="submit">提交</button>
            <a href="/2019210179/admin/manageNews">取消</a>
        </form>
    </div>
    <%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
<%--添加wangEditor.min.js需要的依赖，建议使用远程添加，下载到本地可能会出现富文本乱码--%>
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
