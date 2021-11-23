<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>输入页面</title>
</head>
<body>

<s:form action="selectShape" method="post" >
    <s:radio list="{'圆形','矩形'}" name="shapeSelected" label="请选择处理的图形">
    </s:radio>
    <s:submit value="确定"></s:submit>
</s:form>
<%--<s:fielderror name="shapeSelected"/>--%>
<%
    if ("圆形".equals(request.getParameter("shapeSelected"))){
%>
    <s:form action="compute" method="POST">
        <s:textfield name="radius" label="请输入圆的半径"></s:textfield>
        <s:submit name="submit_compute" value="计算周长"></s:submit>
        <s:submit name="submit_compute" value="计算面积"></s:submit>
    </s:form>
<%
    }
    if("矩形".equals(request.getParameter("shapeSelected"))){
%>
    <s:form action="compute" method="POST">
        <s:textfield name="width" label="请输入矩形的宽"></s:textfield>
        <s:textfield name="height" label="请输入矩形的高"></s:textfield>
    </s:form>
<%
    }
%>
</body>
</html>
