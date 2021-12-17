<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/13
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
    <link rel="shortcut icon" href="/2019210179/resources/icon/hands_up.svg">
    <style>
        *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }

        /*
        下三条CSS用来抵消bootstrap所带来的页面缩放
         */
        div.container{
            width: 100%;
            min-height: 100%;
        }
        div.container{
            padding: 0;
        }
        body{
            padding: 0;
            margin: 0;
        }

        header{
            width: 100%;
            background-color: #4169E1;
        }
        header a{
            display: block;
            padding: 5px 10px;
        }
        header a img{
            color: black;
        }
    </style>
</head>
<body>
<header>
    <a href="/2019210179/index"><img src="/2019210179/resources/img/aulin.png" alt="nefu"></a>
</header>
</body>
</html>
