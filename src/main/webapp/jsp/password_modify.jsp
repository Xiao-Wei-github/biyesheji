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
            <table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">


                <tr>
                    <td align="right" width="35%">以前的密码:</td>
                    <td width=65%><input name="oldPassword" type=password /></td>
                </tr>
                <tr>
                    <td align="right" width="35%">输入新密码:</td>
                    <td width=65%><input name="newPassword" type=password /></td>
                </tr>
                <tr>
                    <td align="right" width="35%">再输入新密码:</td>
                    <td width=65%><input name="newPassword2" type=password /></td>
                </tr>
                <tr bgcolor='#FFFFFF'>
                    <td colspan="4" align="center">
                        <input type='submit' name='button' value='修改' >
                        &nbsp;&nbsp;
                    </td>
                </tr>

            </table>
</body>
</html>
