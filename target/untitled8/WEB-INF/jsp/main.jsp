<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<h2> 员工列表 </h2>
<table border="1" align="center" width="900">
    <tr>
        <th>id</th>
        <th>姓名</th>
        <th>性别</th>
        <th>生日</th>
        <th>电话</th>
        <th>操作</th>
    </tr>
     <tr>
         id, name, sex, birthday, phone
         <c:forEach items="${jops}" var="jops">
           <tr>
             <td>${jops.id}</td>
             <td>${jops.name}</td>
             <td>${jops.sex}</td>
             <td>${jops.birthday}</td>
             <td>${jops.phone}</td>
             <td><a href="/untitled8/delete?deleteid=${jops.id}">删除</a>
                 |<a href="/untitled8/toupdatepage?id=${jops.id}&name=${jops.name}">更新</a></td>
           </tr>
         </c:forEach>

    <tr>
        <td></td><td><a href="/untitled8/insert">新增</a> </td>
    </tr>
</table>
</body>
</html>
