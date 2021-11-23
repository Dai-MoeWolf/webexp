<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入页面</title>
</head>
<body>
<%@ taglib prefix="s" uri="/struts-tags" %>
    <s:form action="selectShape" method="POST" >
        请选择要处理的图形：
        <s:radio list="{'圆形','矩形'}" name="shapeSelected" label="请选择处理的图形:">
        </s:radio>
        <s:submit name="submit" value="确定"></s:submit>
    </s:form>
<%
    if ("圆形".equals(request.getParameter("shapeSelected"))){
        %>
    <s:form action=" " method="POST" >
        <s:textfield name="ridius" label="请输入圆的半径："></s:textfield>
    </s:form>
<%
    }
%>
</body>
</html>
