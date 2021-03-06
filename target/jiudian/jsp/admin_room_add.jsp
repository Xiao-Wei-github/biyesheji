<%--
  Created by IntelliJ IDEA.
  User: stone
  Date: 2019-06-12
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<%--<c:if test="${!empty succ}">--%>
<%--<div class="alert alert-danger alert-dismissable">--%>
<%--<button type="button" class="close" data-dismiss="alert"--%>
<%--aria-hidden="true">--%>
<%--&times;--%>
<%--</button>--%>
<%--${error}--%>
<%--</div>--%>
<%--</c:if>--%>
<%--<c:if test="${!empty error}">--%>
<%--<div class="alert alert-danger alert-dismissable">--%>
<%--<button type="button" class="close" data-dismiss="alert"--%>
<%--aria-hidden="true">--%>
<%--&times;--%>
<%--</button>--%>
<%--${error}--%>
<%--</div>--%>
<%--</c:if>--%>
<div style="position: relative;padding-top: 20px; width: 40%;margin-left: 2%; font-size: 20px">
    <form  id="addRoom" >
        <div class="form-group">
            <label for="roomId">软件编号</label>
            <input type="text" class="form-control" name="roomId" id="roomId" placeholder="请输入软件编号">
        </div>
        <div class="form-group">
            <label for="roomType">软件类型</label>
            <select class="form-control" id="roomType">
                <c:forEach items="${roomTypeList}" var="roomType">
                    <option>${roomType.type}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="introduce">软件介绍</label>
            <textarea class="form-control" rows="3" name="introduce" id="introduce"
                      placeholder="请输入软件简介"></textarea>
        </div>

        <div class="form-group">
            <label for="area">软件名称</label>
            <input type="text" class="photoUrl" name="photoUrl" id="photoUrl" placeholder="请输入软件名称">
        </div>

        <div class="form-group">
            <label for="area">版本号</label>
            <input type="text" class="form-control" name="area" id="area" placeholder="请输入软件版本号">
        </div>

        <div class="form-group">
            <label for="price">发布时间</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="请输入发布时间yyyyMMdd">
        </div>


        <input type="button" id="addRoomButton" value="添加" class="btn btn-success btn-sm" class="text-left">
        <script>
            $("#addRoomButton").click(function () {
                if ($("#roomId").val() == '' || $("#roomType").val() == '' ||
                    $("#introduce").val() == '' || $("#area").val() == '' ||
                    $("#price").val() == '' || $("#photoUrl").val() == ''){
                    alert("请填入完整软件信息！");
                } else {
                    var roomId = $("#roomId").val();
                    var roomType = $("#roomType").val();
                    var introduce = $("#introduce").val();
                    var area = $("#area").val();
                    var price = $("#price").val();
                    var photoUrl = $("#photoUrl").val();
                    $.ajax({
                        type: 'post',
                        url: 'doRoomAdd',
                        data:{
                            roomId:roomId,
                            roomType:roomType,
                            introduce:introduce,
                            area:area,
                            price:price,
                            photoUrl:photoUrl,
                        },
                        dataType: 'json',
                        success: function (data) {
                            if (data.stateCode.trim() === '1'){
                                alert("添加成功！");
                                $("#display").load('room_management.html');
                            } else if (data.stateCode.trim() === '0'){
                                alert("添加失败！");
                            } else if (data.stateCode.trim() === '2'){
                                alert("添加失败！软件编号已经存在！");
                            }
                        }
                    })
                }

            })

        </script>
    </form>
</div>
</body>
</html>
