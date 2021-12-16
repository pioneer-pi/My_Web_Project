<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/9
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--模态框需要用到的jQuery和Bootstrap--%>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /*平衡bootstrap带来的字体变化*/
        body{
            font-size: 16px;
        }

        /*模态框样式*/
        .form-group input{
            outline: none;
            border: none;
            border-bottom: 2px solid black;
            padding: 5px;
            position: relative;
        }
        .form-group label{
            position: relative;
            top: -30px;
            transition: font-size 1s,top 1s;
        }

        .form-group input:valid ~ label,
        .form-group input:focus ~ label{
            top: -50px;
            font-size: 10px;
            color: cornflowerblue;
        }
    </style>
</head>
<body style="padding-right: 0">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="/2019210179/login" method="post">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="font-family: 黑体">管理员后台登录</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" name="name" id="admin_name" required><br>
                        <label for="admin_name" class="form-label">姓名:</label>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" required><br>
                        <label for="password" class="form-label">密码:</label>
                        <p style="color: #F08080">友情提示：若您没有登陆或者登录失败均会返回主界面(登陆成功之后即可直接进入管理员界面无需再次登录)</p>
                        <a href="/2019210179/admin/welcome">若已登录，直接点击进入管理员界面</a>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary">提交</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
