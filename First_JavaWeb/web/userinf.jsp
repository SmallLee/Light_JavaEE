<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%
    String user = request.getParameter("username");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=user%>个人信息</title>
</head>
<body>
    <%
        out.println("个人信息是： "+user);
    %>
</body>
</html>
