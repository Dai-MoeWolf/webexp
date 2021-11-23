<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入</title>
</head>
<body>
    <form action="input.jsp"  method="post" name="form">
        请选择你要处理的图形：
        <input type="radio" name="shape" value="circle" >圆形
        <input type="radio" name="shape" value="rectangle" >矩形
        <br/>
        <input type="submit" name="submit" value="确定" >
    </form>
<%
    String shape = request.getParameter("shape");
    request.getSession().setAttribute("shape", shape );
    //request.setAttribute("shape",shape);
    if ("circle".equals(shape)){

%>
    <form action="computer.jsp" method="post" name="form_circle">
        请输入圆形的半径：
        <input type="text" name="radius">
        <br/>
        <input type="submit" name="submit" value="提交">
    </form>
   <% }
%>
    <%
        if ("rectangle".equals(shape)){
    %>
    <form action="computer.jsp" method="post" name="form_rectangle">
        请输入矩形的宽：
        <input type="text" name="width">
        <br/>
        请输入矩形的高：
        <input type="text" name="height">
        <br/>
        <input type="submit" name="submit" value="提交">
    </form>
<% }%>
</body>
</html>
