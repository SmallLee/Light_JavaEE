<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/4
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取forward的结果</title>
</head>
<body>
    <%=request.getParameter("name")%>
    <%=request.getParameter("age")%>
</body>
</html>
