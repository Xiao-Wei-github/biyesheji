<%--
  Created by IntelliJ IDEA.
  User: Xiao Wei
  Date: 2021-03-01
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新管理员</title>
</head>
<body>
</table>
<div class="form-group" style="width: 140px;">
    <label for="name">用户名</label>
    <input type="text" class="form-control" name="name" id="name" value="${edit.name}" >
</div>

<div class="form-group" style="width: 140px;">
    <label for="jpasw">请输入密码</label>
    <input type="password" class="form-control" name="jpasw" id="jpasw" value="${edit.jpasw}">
</div>

<div class="form-group" style="width: 140px;">
    <label for="jpasws">再次输入新密码</label>
    <input type="password" class="form-control" name="jpasws" id="jpasws" value="${edit.jpasws}">
</div>


<input type="button" id="password" value="确认注册" class="btn btn-success btn-sm" class="text-left">

<script>
    $("#password").click(function () {
        if ($("#jpasw").val() == '' ||
            $("#jpasws").val() == '' || $("#name").val() == '') {
            alert("请填入完整信息！");
        } else if ($("#jpasw").val() != $("#jpasws").val()) {
            alert("两次输入密码不一致！");
        }else {
            var password = $("#jpasw").val();
            var name = $("#name").val();
            $.ajax({
                type: 'post',
                url: 'adminAdd',
                data: {
                    adminName: name,
                    password: password,
                },
                dataType: 'json',
                success: function (data) {
                    if (data.stateCode.trim() === '1'){
                        alert("注册成功！");
                        window.location.href='admin_main.html';
                    } else if (data.stateCode.trim() === '2'){
                        alert("该用户已存在！");
                    }else {
                        alert("信息填写有误注册失败");
                    }
                }
            })
        }
    })
</script>
</body>
</html>
