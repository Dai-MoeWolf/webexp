<%@ page import="com.function.Prints" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>阶乘运算</title>
</head>
<body>
<%!
    long Factorial(int n){
        if(n == 0){
            return 1;
        }
        else {
            int sum = 1;
            for(int i = n ; i > 0 ; i--){
                sum *= i;
            }
            return sum;
        }
    }
%>

<%
    out.print("正整数1~10的阶乘为：");
    out.print("<br/>");
%>
<%
    for(int i=1 ; i<=10 ; i++){
        %>
        <%
            out.print(i+"的阶乘为"+Factorial(i));
            out.print("<br/>");
        %>
        <%
    }
%>


</body>
</html>
