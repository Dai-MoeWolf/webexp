<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@page import="com.mysql.jdbc.Driver" %>
<%@page import="com.jdbc.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf8";
    String user = "root";
    String password = "123456";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, user, password);
        PreparedStatement ps = con.prepareStatement("select * from studentbase a ,studentaddress b where a.id = b.id");
        ResultSet resultSet = ps.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            int age = resultSet.getInt("age");
            String telephone = resultSet.getString("telephone");
            out.println("id:" + id + "  " + "name:" + name + "  " + "age:" + age +"telephone :" + telephone);
        }
        con.close();
        ps.close();
        resultSet.close();
    } catch (ClassNotFoundException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    } catch (Exception e) {
        // TODO: handle exception
        e.printStackTrace();
    }
%>
</body>
</html>
