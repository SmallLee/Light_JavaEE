<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用response对象进行重定向</title>
</head>
<body>
    <%
        out.println("=====");
        response.sendRedirect("form.jsp");
    %>
</body>
</html>
