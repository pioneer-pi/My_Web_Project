<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/8
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Announcement_${announcement.aid}</title>

</head>
<body>
<dvi class="container">
    <div class="header">
        <%@ include file="/jsp/header.jsp"%>
    </div>
    <div class="navigation">
        <%@ include file="/jsp/navigation.jsp"%>
    </div>
    <div class="context">
        <div class="article">
            <div class="blank1">
                <p>${announcement.aid}</p>
                <p>${announcement.title}</p>
                <p>${announcement.context}</p>
                <p>${announcement.add_date}</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <%@ include file="/jsp/footer.jsp"%>
    </div>
</dvi>
</body>
</html>
