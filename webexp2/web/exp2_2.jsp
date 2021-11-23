<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用JSP动作标记实现页面跳转</title>
</head>
<body>
<p>
    选择一个图形
</p>
<form action="exp2_2.jsp" method="post" name="form">
    <input name="shape" type="radio" value="circle"/>圆形
    <input name="shape" type="radio" value="rectangle"/>矩形
    <br><br>
    <input name="submit" type="submit" value="提交" >
</form>
<%
    String shape = request.getParameter("shape");
    request.setAttribute("shape",shape);
    int radius = 0;
    int width = 0;
    int height = 0;
    if("circle".equals(shape)){
        radius = (int) (Math.random()*(100));
        out.print("半径为："+radius);
        %>
     <jsp:forward page="process.jsp">
    <jsp:param  name="radius" value="<%=radius%>"></jsp:param>
    </jsp:forward>
     <%
    }
%>

<%
    if ("rectangle".equals(shape)) {
        width = (int) (Math.random()*(100));
        height = (int) (Math.random()*(100));
        out.print("宽高为"+width+" "+height);
        %>
      <jsp:forward page="process.jsp">
      <jsp:param name="width" value="<%=width%>"></jsp:param>
      <jsp:param name="height" value="<%=height%>"></jsp:param>
      </jsp:forward>
      <%
    }
%>

</body>
</html>
