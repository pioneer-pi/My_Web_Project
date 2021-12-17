<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>就业前景-计算机科学与技术专业</title>
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
                <h2>就业指南</h2>
                <ul>
                    <li><a href="/2019210179/jsp/Work/Work_Direction.jsp">就业方向</a></li>
                    <li><a href="/2019210179/jsp/Work/Work_Prospect.jsp">就业前景</a></li>
                    <li><a href="/2019210179/jsp/Work/Cooperation_Company.jsp">合作公司</a></li>
                </ul>
            </div>
            <div class="blank2">
                <h2>就业前景</h2>
                <img src="/2019210179/resources/Work/prospect.jpg" alt="就业前景非常好">
                <p><strong>就业前景：</strong><br>
                    计算机科学与技术专业、就业发展前景好，就业选择较多，可以到国内外大型电信服务商、大型通信设备制造企业、从事网络工程设计的企事业单位深造，或者从事计算机维护、教育培训等工作。. 软件工程方向，就业前景尤其广阔，既可以继续攻读计算机学位，也可以到单位从事从事通讯，在信息产业发展，从事科研或专项研究，教学，工程技术等方面工作。. 网络与信息安全方向可以从事政府部门方向，为政府、军队、金融、铁路、国防、电信、电力等部门的计算机网络系统和信息安全领域进行管理和服务，还可以继续攻读通信、信息处理、信息安全、计算机软件等硕士学位。. 通信方向学生可到信息产业、财政、金融、邮电、交通、国防、大专院校和科研机构从事通信技术和电子技术的科研、教学和工程技术工作.
                </p>
                <p>专业咨询电话：0451-82191523</p>
            </div>
            <div class="blank3"></div>
        </div>
    </div>
    <%-- footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
