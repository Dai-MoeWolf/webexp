<%--
  Created by IntelliJ IDEA.
  User: Sisfire
  Date: 2021/11/10
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP测试</title>
</head>
<body>
<%
    int i,sum=0;
    for(i=1;i<=100;i++)
        sum+=i;
%>
<P>整数1到100的累加和为：
        <%= sum %><br/>
    <jsp:include page="sub.jsp" flush="true"/>
</body>
</html>

