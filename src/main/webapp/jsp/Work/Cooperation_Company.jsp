<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/11/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>合作公司-计算机科学与技术专业</title>
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
                <h2>合作公司</h2>
                <img src="/2019210179/resources/Work/company1.jpg" alt="大公司1">
                <img src="/2019210179/resources/Work/company2.jpg" alt="大公司2">
                <p><strong>合作公司：</strong>
                    为推动学院党史学习教育落地见效，强化党建引领作用，发挥校企双方优势，加强推进校企党建联建育人模式，6月10日下午，信息学院院长汪国华、党委书记钟蕾、副院长李丹、党委副书记庄雯培、各教研室教师代表、学工组全体辅导员、学生党员代表60余人前往黑龙江长城计算机系统有限公司开展校企联建活动。

                    黑龙江长城计算机系统有限公司对我院师生的到来表示欢迎，带领师生一行参观展厅和生产线，长城计算机系统有限公司副总经理郑大庆介绍了中国电子、中国长城、黑龙江长城公司的发展历程、核心主业、战略布局和技术路线优势，并邀请师生体验了中国长城为庆祝中国共产党成立100周年推出的VR“党建一体机”。

                    随后，信息与计算机工程学院与黑龙江长城计算机系统有限公司进行校企合作签约仪式和支部共建签约仪式。

                    学院院长汪国华与长城计算机系统有限公司副总经理郑大庆签署校企合作协议。汪国华在致辞中介绍了学院发展历程和人才培养特色等情况，希望通过此次校企合作，在专业课程开发方面开展深入合作，在教师队伍企业培养和优秀学生就业方面深度融合，在学生实习基地和社会实践基地方面实现共建，在科技创新团队方面实现共享共赢，努力拓宽学生教学实践和就业渠道，培养和造就适应社会经济发展的高素质技能型人才，实现互利共赢、共同发展。

                    通信工程党支部书记董光辉与长城计算机系统有限公司党支部书记郑大庆签署支部共建协议。学院党委书记钟蕾在致辞中表示，希望双方共同秉承“优势互补、互利共赢、共同提高”的原则，把准共建发力点，聚焦成果产出突破点，共同谋划、协同推进，构建党建工作新格局，实现党建质量和育人成效的相互融合、共同提升。

                    钟蕾强调，希望通过支部共建开展更多形式、更深层次的合作，以创新意识、创新精神、创新思维为指导，在人才培养和专业建设中凝聚党的力量，坚持在“双一流”建设大局中审视、谋划党建工作，以党建工作新格局推动学院各项事业实现新发展，为建设富强民主文明和谐美丽的社会主义现代化新龙江，为实现“两个一百年”奋斗目标和中华民族伟大复兴的中国梦做出更大的贡献。
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
