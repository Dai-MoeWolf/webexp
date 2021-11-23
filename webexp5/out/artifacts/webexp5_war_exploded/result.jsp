<%@ page import="com.jdbc.DBUtil" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.servlet.Query" %>
<%@ page import="com.servlet.Delete" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果页面</title>
</head>
<body>
<table border=1 align="center">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>院系</td>
            <td>专业</td>
            <td>电话</td>
            <td>邮箱</td>
        </tr>
        <%
            try {
                ResultSet rs;
                rs = Query.selectSql();
                while (rs.next()){
                    %>
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("department")%></td>
                <td><%=rs.getString("major")%></td>
                <td><%=rs.getString("telephone")%></td>
                <td><%=rs.getString("email")%></td>
            </tr>
<%               }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println("sql数据库查询异常");
                e.printStackTrace();
            }
        %>
</table>
<form action="" method="post" name="submit_ADUQ">
    <div style="width:100%;text-align:center">
        <input type="submit" name="submit" value="注册">
        <input type="submit" name="submit" value="查找">
        <input type="submit" name="submit" value="删除">
        <input type="submit" name="submit" value="修改">
    </div>
</form>
<%
    String strSubmit = request.getParameter("submit");
    if("注册".equals(strSubmit)){
%>
        <jsp:forward page="register.jsp"/>
<%   }
    if("查找".equals(strSubmit)){
%>
    <form action="" method="post" name="form_query">
        <div style="width:100%;text-align:center">
        请输入要查找的学生的学号：
        <input type="text" name="id">
        <input type="submit" name="submit_query_id" value="提交">
        </div>
    </form>
<%
    }
        if ("提交".equals(request.getParameter("submit_query_id"))){
%>
            <table border="1" align="center">
                <tr>
                    <td>学号</td>
                    <td>姓名</td>
                    <td>院系</td>
                    <td>专业</td>
                    <td>电话</td>
                    <td>邮箱</td>
                </tr>
                <%
                    try {
                        ResultSet rs;
                        rs = Query.selectSqlByid(Integer.valueOf(request.getParameter("id")));
                        while (rs.next()){
                %>
                <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("department")%></td>
                    <td><%=rs.getString("major")%></td>
                    <td><%=rs.getString("telephone")%></td>
                    <td><%=rs.getString("email")%></td>
                </tr>
                <%               }
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    out.println("sql数据库查询异常");
                    e.printStackTrace();
                }
                %>
            </table>
<%
    }
%>
<%
    if("删除".equals(strSubmit)){
%>
<form action="" method="post" name="form_delete">
    <div style="width:100%;text-align:center">
        请输入要删除的学生的学号：
        <input type="text" name="id">
        <input type="submit" name="submit_delete_id" value="提交">
    </div>
</form>
<%
    }
    if ("提交".equals(request.getParameter("submit_delete_id"))){
        Delete.deleteByID(Integer.valueOf(request.getParameter("id")));
%>
<div align="center">
    删除成功!
</div>
<%
    }
%>
<%
    if("修改".equals(strSubmit)){
%>
<form action="/Update" method="post" name="form_update">
    <div style="width:100%;text-align:center">
        请输入要修改信息的学生的信息：
        <br>
        学号：
        <input type="text" name="id">
        <br>
        姓名：
        <input type="text" name="name">
        <br>
        年龄：
        <input type="text" name="age">
        <br>
        性别：
        <select name="sex">
            <option value="male">男</option>
            <option value="female">女</option>
        </select>
        <br>
        院系：
        <input type="text" name="department">
        <br>
        专业：
        <input type="text" name="major">
        <br>
        电话：
        <input type="text" name="telephone">
        <br>
        邮箱：
        <input type="text" name="email">
        <br>
        <input type="submit" name="submit" value="提交">
    </div>
</form>
<%
    }
%>
</body>
</html>