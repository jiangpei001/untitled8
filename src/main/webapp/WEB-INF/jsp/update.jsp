<%--
  Created by IntelliJ IDEA.
  User: 南岸槿独
  Date: 2020/5/12
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>
<form action="/untitled8/update" method="post">
     <input type="hidden" name="id" value="${id}">
    员工姓名：<input type="text" name="name" value="${name}"/>
    性别：<input type="text" name="sex"/>
    生日：<input type="text" name="birthday"/>
    手机号：<input type="text" name="phone"/>
    <input type="submit" value="更新">
</form>
<%--<c:forEach items="${jops}" var="jops">--%>
<%--    <tr>--%>
<%--        <td>${jops.id}</td>--%>
<%--        <td>${jops.name}</td>--%>
<%--        <td>${jops.sex}</td>--%>
<%--        <td>${jops.birthday}</td>--%>
<%--        <td>${jops.phone}</td>--%>
        <td><a href="/untitled8/delete?deleteid=${jops.id}">删除</a>|<a
                href="/untitled8/toupdatepage?id=${jops.id}&name=${jops.name}">更新</a></td>
<%--    </tr>--%>
<%--</c:forEach>--%>

<%--<form action="/untitled8/add" method="post">--%>
<%--    员工姓名：<input type="text" name="name"/>--%>
<%--    性别：<input type="text" name="sex"/>--%>
<%--    生日：<input type="text" name="birthday"/>--%>
<%--    手机号：<input type="text" name="phone"/>--%>
<%--    <input type="submit" value="添加">--%>
<%--</form>--%>


<%--@RequestMapping("selectAlljop")--%>
<%--public String selectAlljop(HttpServletRequest request, HttpServletResponse response) {--%>
<%--List<Jop> jops = jopSerivece.selectAll();--%>
<%--    request.setAttribute("jops", jops);--%>
<%--    return "main";--%>
<%--    }--%>

<%--    @RequestMapping("add")--%>
<%--    public String add(Jop jop, HttpServletRequest request, HttpServletResponse response) {--%>
<%--    jopSerivece.insert(jop);--%>
<%--    return selectAlljop(request, response);--%>
<%--    }--%>

<%--    @RequestMapping("insert")--%>
<%--    public String insert(HttpServletRequest request, HttpServletResponse response) {--%>
<%--    return "insert";--%>
<%--    }--%>

<%--    @RequestMapping("delete")--%>
<%--    public String delete(Integer deleteid, HttpServletRequest request, HttpServletResponse response) {--%>
<%--    jopSerivece.deleteByPrimaryKey(deleteid);--%>
<%--    return selectAlljop(request, response);--%>
<%--    }--%>

</body>
</html>
