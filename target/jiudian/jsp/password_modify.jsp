<%--
  Created by IntelliJ IDEA.
  User: Xiao Wei
  Date: 2021-02-26
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>密码修改</title>
</head>
<body>
        </table>
        <div class="form-group" style="width: 140px;">
            <label for="name">用户名</label>
            <input type="text" class="form-control" name="name" id="name" value="${edit.name}" >
        </div>
            <div class="form-group" style="width: 140px;">
                <label for="pasw">旧密码</label>
                <input type="password" class="form-control" name="pasw" id="pasw" value="${edit.pasw}" >
            </div>

            <div class="form-group" style="width: 140px;">
                <label for="jpasw">新密码</label>
                <input type="password" class="form-control" name="jpasw" id="jpasw" value="${edit.jpasw}">
            </div>

            <div class="form-group" style="width: 140px;">
                <label for="jpasws">再次输入新密码</label>
                <input type="password" class="form-control" name="jpasws" id="jpasws" value="${edit.jpasws}">
            </div>


            <input type="button" id="password" value="确认修改" class="btn btn-success btn-sm" class="text-left">

        <script>
            $("#password").click(function () {
                if ($("#pasw").val() == '' || $("#jpasw").val() == '' ||
                    $("#jpasws").val() == '' || $("#name").val() == '') {
                    alert("请填入完整信息！");
                } else if ($("#jpasw").val() != $("#jpasws").val()) {
                    alert("两次输入密码不一致！");
                }else {
                    var jpasw = $("#jpasw").val();
                    var name = $("#name").val();
                    var password = $("#pasw").val();
                    $.ajax({
                        type: 'post',
                        url: 'passwordMdify',
                        data: {
                            adminPwd: jpasw,
                            adminName: name,
                            password: password,
                        },
                        dataType: 'json',
                        success: function (data) {
                            if (data.stateCode.trim() === '1'){
                                alert("修改成功！");
                                window.location.href='adminLogin.html';
                            } else if (data.stateCode.trim() === '0'){
                                alert("旧密码输入错误！");
                            }
                        }
                    })
                }
            })
        </script>
</body>
</html>
