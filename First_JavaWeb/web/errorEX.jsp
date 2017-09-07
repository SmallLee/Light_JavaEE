<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>处理JSP页面的异常</title>
</head>
<body>
        异常的类型为<%=exception.getClass()%>
        异常的信息是<%=exception.getMessage()%>
</body>
</html>
