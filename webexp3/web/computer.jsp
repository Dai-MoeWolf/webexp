<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.function.*" %>
<html>
<head>
    <title>计算</title>
</head>
<body>
<%
    //String strShape = String.valueOf(request.getAttribute("shape"));
    String strShape =(String)request.getSession().getAttribute("shape");
    String strRadius = request.getParameter("radius");
    String strWidth = request.getParameter("width");
    String strHeight = request.getParameter("height");
    double area;
    out.print(strRadius + " " + strWidth + " "+ strHeight +"  " + strShape);
    Shape shape;
    if("circle".equals(strShape)){
        double radius = Double.parseDouble(request.getParameter("radius"));
        shape = new Circle(radius);
        area = shape.getArea();
%>
<jsp:forward page="result.jsp">
    <jsp:param name="radius" value="<%=radius%>"></jsp:param>
    <jsp:param name="area" value="<%=area%>"></jsp:param>
</jsp:forward>
    <%
    }%>
    <%
        if("rectangle".equals(strShape)){
            double width = Double.parseDouble(request.getParameter("width"));
            double height = Double.parseDouble(request.getParameter("height"));
            shape = new Rectangle(width,height);
            area = shape.getArea();
    %>
<jsp:forward page="result.jsp">
    <jsp:param name="width" value="<%=width%>"></jsp:param>
    <jsp:param name="height" value="<%=height%>"></jsp:param>
    <jsp:param name="area" value="<%=area%>"></jsp:param>
</jsp:forward>
<%  }
%>
</body>
</html>
