<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    class Circle
    {
        private final static double PI=3.1415;
        private double radius;
        public Circle()
        {
            radius=1.0;
        }
        public Circle(double radius)
        {
            this.radius=radius;
        }
        public double getRadius()
        {
            return radius;
        }
        public void setRadius(double radius)
        {
            this.radius=radius;
        }
        public double getArea()
        {
            return PI*radius*radius;
        }
    }
%>
<%
    String strRadius = request.getParameter("radius");
    double radius = Double.parseDouble(strRadius);
    Circle circle = new Circle();
    circle.setRadius(radius);
    out.print("半径为"+radius+"的⚪的面积为"+circle.getArea());
%>
</body>
</html>
