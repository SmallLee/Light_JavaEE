<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>将用户名保存到Cookie中</title>
</head>
<body>
    <%
        //获取请求参数
        String name = request.getParameter("name");
        Cookie cookie = new Cookie("name",name);
        cookie.setMaxAge(3600);//cookie的过期时间为1小时
        //向客户端机器写入cookie
        response.addCookie(cookie);
    %>
</body>
</html>
<%--
在浏览器中采用下面的方式传递参数
localhost:8080/addCookie.jsp?name=lxn
--%>
