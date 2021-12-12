<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/26
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>教师队伍</title>
    <link rel="stylesheet" href="/2019210179/jsp/Public_CSS/sidebar.css" type="text/css">
    <style>
        table{
            border-collapse: collapse;
            padding: 10px 20px;
            width: 100%;
        }
        body{
            height: 100%;
        }
        /*
        Card布局展示老师图片
         */
        .blank2{
            display: flex;
            flex-direction: row;
            align-items: center;
        }
        .blank2 .card{
            margin: 40px 20px;
            width: 200px;
            height: 300px;
            text-align: center;
            /*box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);*/
        }
        .blank2 .card:hover{
            box-shadow: 0 8px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        }
        .blank2 .card .img img{
            width: 200px;
            height: 300px;
            object-fit: cover;
            border-radius: 5px;
        }
        .blank2 .card .container{
            padding: 10px;
        }
        .blank2 .card .container p{
            text-align: center;
        }
        .blank2 a{
            text-decoration: none;
        }

    </style>
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
                <c:forEach items="${teachers}" var="teacher">
                    <a href="/2019210179/listTeacherById?id=${teacher.id}">
                        <div class="card">
                            <div class="img">
                                <img src="/2019210179/resources/teachers/teacher_${teacher.id}.jpg" alt="${teacher.name}">
                            </div>
                            <div class="container">
                                <p>${teacher.name}</p>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
            <div class="blank3">
            </div>
        </div>
    </div>
    <div class="footer">
        <%@ include file="/jsp/footer.jsp"%>
    </div>
</div>
</body>
</html>
