<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入</title>
</head>
<body>
<form action="input.jsp" method="get" name="form_select">
    请选择要处理的图形：
<select name="shape">
    <option value="circle">圆形</option>
    <option value="rectangle">矩形</option>
</select>
<input type="submit" name="submit_ok" value="确定">
</form>
<%
    String shape = request.getParameter("shape");
    request.getSession().setAttribute("shape", shape );
    //out.print(shape);
    if ("circle".equals(shape)){
%>
    <form action="/computer" method="get" name="form_circle">
        请输入圆的半径：
        <input type="text" name="radius">
        <br>
        <input type="submit" name="submit_area" value="计算面积">
        <input type="submit" name="submit_per" value="计算周长">
    </form>
<%
    }
%>
<%
    if ("rectangle".equals(shape)){
%>
    <form action="/computer" method="get" name="form_rectangle">
        请输入矩形的宽:
        <input type="text" name="width">
        <br>
        请输入矩形的高:
        <input type="text" name="height">
        <br>
        <input type="submit" name="submit_area" value="计算面积">
        <input type="submit" name="submit_per" value="计算周长">
    </form>
<%
    }
%>
</body>
</html>
