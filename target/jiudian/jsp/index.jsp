<%--
  Created by IntelliJ IDEA.
  User: stone
  Date: 2019-06-04
  Time: 09:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>软件管理系统</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <style>
        #login{
            margin-top: 12%;
            display: block;
        }
    </style>
</head>
<body background="../img/jiudian2.jpg" style=" background-repeat:no-repeat ; background-size:100% 100%; background-attachment: fixed;">

<div class="container-fluid" style="padding: 0em">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid nav-con">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" style="padding-top: 1rem; padding-left: 5rem; color: #dfe4e6">
                    <span style="font-size: 3rem;padding-right: 2rem;letter-spacing: 5px">软件管理系统</span>
                </a>
            </div>
        </div>
    </nav>
    <div class="panel panel-default col-xs-4 col-xs-offset-4 col-sm-4 col-sm-offset-6 col-md-2 col-md-offset-8" id="login">
        <div class="panel-heading" style="background-color: #ffffff;">
            <h3 class="panel-title text-center">登录</h3>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label for="adminName">账号</label>
                <input type="text" class="form-control" id="adminName" name="adminName" placeholder="请输入账号">
            </div>
            <div class="form-group">
                <label for="adminPwd">密码</label>
                <input type="password" class="form-control" id="adminPwd" name="adminPwd" placeholder="请输入密码">
            </div>
            <div class="form-group">
                <label >请选择登陆模式</label>
                <select id="check">
                    <option value="1">管理员 </option>
                    <option selected value="0">用户</option>
                </select>
            </div>
            <div class="form-group" style="display: flex">
                <div class="col-xs-12" style="margin-top: 20px">
                    <!-- 按钮触发模态框 -->
                    <button type="button" class="btn" id="userRegisterButton" data-toggle="modal" data-target="#userRegisterModal" style="background-color: #ff9000">注册</button>
                    <!-- 模态框（Modal） -->
                    <div class="modal fade" id="userRegisterModal" tabindex="-1" role="dialog" aria-labelledby="userRegisterModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                    </button>
                                    <h4 class="modal-title" id="userRegisterModalLabel">
                                        用户注册
                                    </h4>
                                </div>
                                <div class="modal-body">

                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="registerUserName" class="col-sm-2 col-sm-offset-2 control-label">用户名:</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="registerUserName">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerPhone" class="col-sm-2 col-sm-offset-2 control-label">手机号码:</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="registerPhone">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerEmail" class="col-sm-2 col-sm-offset-2 control-label">邮箱:</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="registerEmail">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerQQ" class="col-sm-2 col-sm-offset-2 control-label">QQ号码:</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="registerQQ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerPhotoUrl" class="col-sm-2 col-sm-offset-2 control-label">头像:</label>
                                            <div class="col-sm-6" style="margin-top: 8px">
                                                <input type="file" id="registerPhotoUrl">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerAddress" class="col-sm-2 col-sm-offset-2 control-label">家庭住址:</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="registerAddress">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerPwd" class="col-sm-2 col-sm-offset-2 control-label">密码:</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" id="registerPwd">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="registerRePwd" class="col-sm-2 col-sm-offset-2 control-label">确认密码:</label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" id="registerRePwd">
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <p id="registerInfo"></p>
                                        </div>
                                        <%--<div class="form-group">--%>
                                        <%--<div class="col-sm-offset-2 col-sm-10">--%>
                                        <%--<div class="checkbox">--%>
                                        <%--<label>--%>
                                        <%--<input type="checkbox"> Remember me--%>
                                        <%--</label>--%>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group">--%>
                                        <%--<div class="col-sm-offset-2 col-sm-10">--%>
                                        <%--<button type="submit" class="btn btn-default">Sign in</button>--%>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                    </form>
                                </div>
                                <div class="modal-footer" style="margin-top: 20px">
                                    <button type="button" id="registerSubmitButton" class="btn btn-primary">
                                        提交
                                    </button>
                                    <button type="button" onclick="exitModal()" class="btn btn-default" data-dismiss="modal">
                                        取消
                                    </button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->
                </div>
            </div>
            <p style="font-size: 1.2rem; margin-top: -0.3rem; text-align: right; color: red; position: absolute" id="adminLoginInfo"></p>
            <br>
            <button id="adminLoginButton"  class="btn btn-primary btn-block">登陆</button>
        </div>
    </div>
    <script>
        $("#adminLoginButton").click(function () {
            var adminName = $("#adminName").val();
            var adminPwd = $("#adminPwd").val();
            var check = $("#check").val();
            if (adminName == '') {
                $("#adminLoginInfo").text("提示：账号不能为空！");
            } else if (adminPwd == '') {
                $("#adminLoginInfo").text("提示：密码不能为空！");
            } else {
                if(check == 1) {
                    $.ajax({
                        type: "post",
                        url: "/adminLoginCheck",
                        data: {
                            adminName: adminName,
                            adminPwd: adminPwd
                        },
                        dateType: "json",
                        success: function (data) {
                            if (data.stateCode.trim() === "0") {
                                $("#adminLoginInfo").text("提示：账号或密码错误！");
                            } else if (data.stateCode.trim() === "1") {
                                $("#adminLoginInfo").text("提示：登录成功，跳转中....");
                                window.location.href = "admin_main.html";
                            }
                        }
                    })
                }else {
                    $.ajax({
                        type: "post",
                        url: "/userLoginCheck",
                        data: {
                            adminName: adminName,
                            adminPwd: adminPwd
                        },
                        dateType: "json",
                        success: function (data) {
                            if (data.stateCode.trim() === "0") {
                                $("#adminLoginInfo").text("提示：账号或密码错误！");
                            } else if (data.stateCode.trim() === "1") {
                                $("#adminLoginInfo").text("提示：登录成功，跳转中....");
                                window.location.href = "user_main.html";
                            }
                        }
                    })
                }
            }
        })
    </script>
    <script type="text/javascript">
        $("#registerSubmitButton").click(function () {
            var userName = $("#registerUserName").val();
            var phone = $("#registerPhone").val();
            var email = $("#registerEmail").val();
            var qq = $("#registerQQ").val();
            var photoUrl = $("#registerPhotoUrl").val();
            var address = $("#registerAddress").val();
            var userPwd = $("#registerPwd").val();
            var userRePwd = $("#registerRePwd").val();
            setTimeout(function () {
                $("#registerInfo").text("");
            },3000);
            if (userName == '') {
                $("#registerInfo").text("提示：用户名不能为空！");
            } else if (userPwd == '') {
                $("#registerInfo").text("提示：密码不能为空！");
            } else if (userPwd != userRePwd) {
                $("#registerInfo").text("提示：两次密码不一致！");
            } else {
                $.ajax({
                    type: 'post',
                    url: 'userRegister',
                    data: {
                        userName: userName,
                        phone: phone,
                        email: email,
                        qq: qq,
                        photoUrl: photoUrl,
                        address: address,
                        userPwd: userPwd
                    },
                    dataType: 'json',
                    success: function (data) {
                        if (data.registerState.trim() === '0'){
                            alert("系统错误，注册失败！")
                        } else if (data.registerState.trim() === '1'){
                            alert("注册成功！！！");
                            $("#userRegisterModal").modal('hide');
                            window.location.href("user_main.html");
                        } else if (data.registerState.trim() === '2'){
                            $("#registerInfo").text("提示：该用户名已经被注册！");
                        }
                    }
                })
            }

        });
        $("#userLoginButton").click(function () {
            var userName = $("#userName").val();
            var userPwd = $("#userPwd").val();
            if (userName == '') {
                $("#userLoginInfo").text("提示：账号不能为空！");
            } else if (userPwd == '') {
                $("#userLoginInfo").text("提示：密码不能为空！");
            } else {
                $.ajax({
                    type: "post",
                    url: "/userLoginCheck",
                    data:{
                        userName: userName,
                        userPwd: userPwd
                    },
                    dateType: "json",
                    success: function (data) {
                        if (data.stateCode.trim() === "0"){
                            $("#userLoginInfo").text("提示：账号或密码错误！");
                        } else if (data.stateCode.trim() === "1"){
                            alert("登录成功！");
                            window.location.href="user_main.html";
                        }
                    }
                })
            }
        })
    </script>
</div>
</body>
</html>
