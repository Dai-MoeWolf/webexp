<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
<form action="/Insert" method="post" name="form_register">
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
</form>
</body>
</html>
