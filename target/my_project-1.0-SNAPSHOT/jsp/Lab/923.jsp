<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/17
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实验室介绍-计算机科学与技术专业</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
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
                <h2>923实验室</h2>
                <img src="/2019210179/resources/Lab/923.png">
                <p><strong>实验室介绍：</strong>
                    计算机实验中心建设了七个面向本科生开放的兴趣小组实验室，分别为ACM创新实验室、仿人型机器人实验室、计算机大学生创新实验室、计算机硬件创新实验室、TRIZ实践基地、计算机生物大数据本科生实验室和iCAN东北林业大学创新创业实践基地。每个实验室专业分别指派2位老师进行指导，让本科生能够尽早的生产实践、科研项目、科技竞赛中得到锻炼。其中ACM实验室，从2006年到2018年，在ACM/ICPC国际大学生编程竞赛累计获奖（省级以上）共477人次，其中一等奖13个，二等奖39个，三等奖47个，优胜奖35个，最佳女队奖1个，全国赛银牌6枚、铜牌8枚，亚洲赛区银牌5枚、铜牌41枚。培养出100多名年薪十万以上的毕业生，其中年薪200万以上1人，100万-200万1人，50万-99万的4人；这100多人分别就业于：美国谷歌、微软中国、网易、百度、阿里巴巴和腾讯等IT公司。

                    学院和专业十分重视学生实践和创新能力的锻炼和提高，通过搭建创新创业平台、社会实践平台和建设学生实践基地等方式为学生的创新和实践活动提供支持。采取多种形式鼓励学生参与到大学生创新项目的研究中来。2015年-2018年专业共获批大学生创新项目和科研训练项目81项，其中，国家级大学生创新项目26项，省级大学生创新项目10项，校级大学生创新项目31项，院级大学生创新项目7项，科研训练项目7项
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
