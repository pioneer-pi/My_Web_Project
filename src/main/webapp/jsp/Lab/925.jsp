<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/17
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实验室介绍-计算机科学与技术专业</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
    <link rel="shortcut icon" href="/2019210179/resources/icon/hands_up.svg">
    <style>
        .blank2 img{
            width: 800px;
            height: 600px;
            object-fit: cover;
            margin: 10px;
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
        <div class="title">
        </div>
        <div class="article">
            <div class="blank1">
                <h2>实验室介绍</h2>
                <ul>
                    <li><a href="/2019210179/jsp/Lab/923.jsp">923实验室</a></li>
                    <li><a href="/2019210179/jsp/Lab/925.jsp">925实验室</a></li>
                </ul>
            </div>
            <div class="blank2">
                <h2>925实验室</h2>
                <img src="/2019210179/resources/Lab/925.png">
                <p><strong>实验室介绍：</strong>
                    计算机基础教育与实验中心成立于2019年11月。在1978年成立的计算中心基础教研室基础上，合并了2012年成立的计算机科学技术实验中心以及电子信息与通信工程实验室组成，是学院创建之初最早的部门之一。中心承担着全校本科生的计算机基础教育和计算机实践教学工作，承担全院所有本科和硕士专业课程的实践教学活动的支撑管理工作。现共有教职工19名，其中专任教师9人，包括教授1人、副教授5人，讲师3人；专职实验教师10人，其中高级实验师2人，工程师8人；博士及在读博士6人，硕士11人。教职员工梯队结构合理，知识结构全面。

                    全体教师在圆满完成教学实验管理任务的同时，不断提高业务素质，积极开展科学研究与教学改革项目，主持和参加国家级、省部级、横向科研课题和教学改革课题800余项，多人获得省、市、校级教学成果奖和科学进步奖，在各级期刊中发表教改和学术论文100余篇，正式出版教材20余部，教材均在教学中进行实际应用。

                    计算机科学技术实验中心设计算机公共基础实验室, 计算机系统结构实验室, 网络工程与安全实验室, 信息管理系统综合实验室，电子信息与通信工程实验室以及信息技术创新实训实验室等6个分室21个房间，建筑面积4800m2。配备品牌台式计算机1200余台，计算机系统结构、计算机组成原理等系统类实验箱200余套；单片机原理、ARM、FPGA、物联网等硬件相关实验箱280余套。实验教学资产1800余万元。
                <p>专业咨询电话：0451-82191523</p>
            </div>
            <div class="blank3"></div>
        </div>
    </div>
    <%--footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
