<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.function.*" %>
<html>
<head>
    <title>运算结果</title>
</head>
<body>
<%
    Shape shape = null;
    double area;
    String strShape = String.valueOf(request.getAttribute("shape"));
    if("circle".equals(strShape)){
        double radius = Double.parseDouble(request.getParameter("radius"));
        shape = new Circle(radius);
        area = shape.getArea();
        out.println("用户选择的是圆形");
        out.print("<br>");
        out.println("圆形的半径是:"+radius);
        out.print("<br>");
        out.println("圆形的面积是:"+area);
    }
    else if ("rectangle".equals(strShape)){
        double width = Double.parseDouble(request.getParameter("width"));
        double height = Double.parseDouble(request.getParameter("height"));
        shape = new Rectangle(width,height);
        area = shape.getArea();
        out.println("用户选择的是矩形");
        out.print("<br>");
        out.println("矩形的长度是:" + width);
        out.print("<br>");
        out.println("矩形的高度是:" + height);
        out.print("<br>");
        out.println("圆形的面积是:"+area);
    }
%>
</body>
</html>
