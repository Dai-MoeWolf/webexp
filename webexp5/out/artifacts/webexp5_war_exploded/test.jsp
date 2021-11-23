<%--
  Created by IntelliJ IDEA.
  User: Sisfire
  Date: 2021/11/20
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面</title>
</head>
<body>
<form action="" method="post" name="form_query">
    <div style="width:100%;text-align:center">
        请输入要查找的学生的学号：
        <input type="text" name="id">
        <input type="submit" name="submit_query_id" value="提交">
    </div>
</form>
<%
    if ("提交".equals(request.getParameter("submit_query_id"))){
        %>
<table border="1" align="center">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>院系</td>
        <td>专业</td>
        <td>电话</td>
        <td>邮箱</td>
    </tr>
</table>

<%
    }
%>
</body>
</html>
