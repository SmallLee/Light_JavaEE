<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/4
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp forward</title>
</head>
<body>
    <jsp:forward page="jsp-result.jsp">
        <jsp:param name="name" value="lxn"/>
        <jsp:param name="age" value="12"/>
    </jsp:forward>
</body>
</html>
