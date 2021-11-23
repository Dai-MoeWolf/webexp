<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.print("客户端IP地址为:"+ request.getRemoteAddr());
    out.print("<br>");
    out.print("客户端主机名为:"+ request.getRemoteHost());
    out.print("<br>");
    out.print("客户端端口号为:"+ request.getRemotePort());
    out.print("<br>");
    out.print("客户端使用的协议为:"+ request.getProtocol());
    out.print("<br>");
    out.print("客户端提交信息的页面地址为:"+ request.getRequestURI());
    out.print("<br>");
    out.print("服务器名称为:" + request.getServerName());
    out.print("<br>");
    out.print("采用的信息编码方式为:" + request.getCharacterEncoding());
    out.print("<br>");
    out.print("HTTP文件头中的User-Agent的值为:" +request.getHeader("User-Agent"));
    out.print("<br>");
    out.print("响应页面的编码方式为:" + response.getCharacterEncoding());
    out.print("<br>");
    out.print("响应状态码值为:" + response.getStatus());
    out.print("<br>");
    out.print("响应缓冲区大小为:" + response.getBufferSize());
    out.print("<br>");
    out.print("本页面对应的Servlet为:" + page.getClass());
    out.print("<br>");
    out.print("本次会话的id号为:" + request.getRequestedSessionId());
    out.print("<br>");
    out.print("Web应用程序的实际路径为:" + request.getServletContext().getRealPath("/"));
%>
</body>
</html>
