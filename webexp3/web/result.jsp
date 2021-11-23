<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.function.*" %>
<html>
<head>
    <title>结果</title>
</head>
<body>
<%
    Shape shape;
    //String strShape = String.valueOf(request.getAttribute("shape"));
    String strShape =(String)request.getSession().getAttribute("shape");
    if("circle".equals(strShape)){
        double radius = Double.parseDouble(request.getParameter("radius"));
        shape = new Circle(radius);
        out.print("用户选择的是圆形");
        out.print("<br>");
        out.print("用户输入的圆形半径是"+radius);
        out.print("<br>");
        out.print("半径为"+radius+"的圆形面积是:"+shape.getArea());
    }
    else if("rectangle".equals(strShape)){
        double width = Double.parseDouble(request.getParameter("width"));
        double height = Double.parseDouble(request.getParameter("height"));
        shape = new Rectangle(width,height);
        out.print("用户选择的是矩形");
        out.print("<br>");
        out.print("用户输入的矩形的宽是"+width);
        out.print("<br>");
        out.print("用户输入的矩形的高是"+height);
        out.print("<br>");
        out.print("宽为:"+width+"  "+"高为"+height+"的矩形面积是:"+shape.getArea());
    }
%>
</body>
</html>
