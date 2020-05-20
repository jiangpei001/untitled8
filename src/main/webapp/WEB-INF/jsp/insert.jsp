<%--
  Created by IntelliJ IDEA.
  User: 南岸槿独
  Date: 2020/5/12
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>添加员工信息</h2>
id, name, sex, birthday, phone
<form action="add" method="post" onsubmit="return check()"> <br>
    姓名：<input type="text" name="name" id="name"><br>
    性别：男：<input type="radio" name="sex" value="男" checked="checked"><br>
         女：<input type="radio" name="sex" value="女" ><br>
    生日：<input type="text" name ="birthday" id="birthday"><br>
    电话：<input type="text" name = "phone" id="phone"><br>
    <input type="submit" value="添加">
</form>
</body>
<script>
    function  check() {
       var name = document.getElementById("name").value;
       var birthday = document.getElementById("birthday").value;
        var phone = document.getElementById("phone").value;
        if (name == "") {
            alert("姓名不能为空")
            return false
        }
        if (birthday == "") {
            alert("出生日期不能为空")
            return false
        }
        if (phone == "") {
            alert("电话不能为空")
            return false
        }
    }
</script>
</html>
