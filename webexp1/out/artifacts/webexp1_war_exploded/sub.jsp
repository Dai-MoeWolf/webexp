<%--
  Created by IntelliJ IDEA.
  User: Sisfire
  Date: 2021/11/10
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出系统当前的时间</title>
</head>
<body>
<%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");     //设置日期格式
    java.util.Date currentTime = new java.util.Date();
    String time = simpleDateFormat.format(currentTime).toString();
    out.println("当前系统时间为："+time);
%>
</body>
</html>
