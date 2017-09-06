<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/6
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用config获取JSP配置参数</title>
</head>
<body>
        <%
            String name = config.getInitParameter("name");
            String address = config.getInitParameter("address");
        %>
        name参数的值<%=name%>
        address参数的值<%=address%>
</body>
</html>
