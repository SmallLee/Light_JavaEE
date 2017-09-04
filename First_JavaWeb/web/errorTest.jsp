<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/1
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>错误处理</title>
</head>
<body>
    <%
        int a = 5/0;
    %>
<%=a%>
</body>
</html>
