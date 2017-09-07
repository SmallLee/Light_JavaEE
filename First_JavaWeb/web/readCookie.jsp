<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取Cookie</title>
</head>
<body>
    <%
        //返回客户端机器上的所有Cookie
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("name")) {
                out.println(cookie.getValue());
            }
        }
    %>
</body>
</html>
