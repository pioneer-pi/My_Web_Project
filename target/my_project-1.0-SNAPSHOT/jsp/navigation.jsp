<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/13
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    模态框需要的jQuery和Bootstrap--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <style>
        div.first-nav{
            text-align: center;
            /*margin-bottom: 60px;*/
        }
        div.first-nav ul{
            list-style: none;
            text-align: center;
            padding: 0 20px;

        }

        div.first-nav>ul{
            display: flex;
            padding: 0;
            width: 100%;
            text-align: center;
            background-color: #000080;
        }
        div.first-nav>ul>li{
            position: relative;
            text-align: center;
        }
        div.first-nav>ul>li>a{
            text-decoration: none;
            display: block;
            /*color: white;*/
            color: white;
            padding: 20px 50px;
        }
        div.first-nav #log{
            margin-left: auto;
        }

        div.second-nav ul{
            height: 0;
            overflow: hidden;
        }
        div.second-nav ul{
            position: absolute;
            width: 100%;
            padding: 0;
            margin: 0;
            left: 0;
        }
        div.second-nav ul li{
            position: relative;
            background-color: black;
            opacity: 0.7;
            z-index: 1;
        }
        div.second-nav li a{
            display: block;
            text-decoration: none;
            color: white;
            padding: 10px 10px;
        }

        div.first-nav>ul>li:hover ul{
            height: 150px;
            transition: height 0.5s;
        }
        div.first-nav>ul>li:hover>a{
            background-color: black;
        }

        div.second-nav>ul>li:hover{
            background-color: black;
            opacity: 1;
        }
    </style>
</head>
<body>
<div class="first-nav">
    <ul>
        <li><a href="/2019210179/jsp/Professional_introduction/Professional_profile.jsp">专业介绍</a>
            <div class="second-nav">
                <ul>
                    <li><a href="/2019210179/jsp/Professional_introduction/Professional_profile.jsp">专业简介</a></li>
                    <li><a href="/2019210179/jsp/Professional_introduction/Direction_profile.jsp">方向简介</a></li>
                </ul>
            </div>
        </li>
        <li><a href="/2019210179/jsp/Lab/923.jsp">实验室</a>
            <div class="second-nav">
                <ul>
                    <li><a href="/2019210179/jsp/Lab/923.jsp">923创新实验室</a></li>
                    <li><a href="/2019210179/jsp/Lab/925.jsp">925移动开发实验室</a></li>
                </ul>
            </div>
        </li>
        <li><a href="/2019210179/listTeachersByTitle?Title=讲师">教室队伍</a>
            <div class="second-nav">
                <ul>
                    <li><a href="/2019210179/listTeachersByTitle?Title=讲师">讲师</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=副教授">副教授</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=教授">教授</a></li>
                </ul>
            </div>
        </li>
        <li><a href="/2019210179/jsp/Work/Work_Direction.jsp">就业指南</a>
            <div class="second-nav">
                <ul>
                    <li><a href="/2019210179/jsp/Work/Work_Direction.jsp">就业方向</a></li>
                    <li><a href="/2019210179/jsp/Work/Work_Prospect.jsp">就业前景</a></li>
                    <li><a href="/2019210179/jsp/Work/Cooperation_Company.jsp">合作公司</a></li>
                </ul>
            </div>
        </li>

        <li id="log"><a href="" data-toggle="modal" data-target="#myModal">登录</a></li>
    </ul>
</div>
<%--模态框--%>
<%@ include file="/jsp/module.jsp"%>
</body>

</html>
