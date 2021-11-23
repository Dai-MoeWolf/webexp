<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>
    请输入半径：
</h2>
<form action="" method="post" name="form">
    <input type="text"  name="radius">
    <input type="submit" value="计算" name="submit">
</form>
<%
    String radius = request.getParameter("radius");
%>
<jsp:include page="computeAreaOfCircle.jsp" flush="true">
    <jsp:param name="radius" value="<%=radius%>"></jsp:param>
</jsp:include>


</body>
</html>
