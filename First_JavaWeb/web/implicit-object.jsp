<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/11
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内置对象</title>
</head>
<body>
    <h2>表达式内置对象使用</h2>
    请输入你的名字：
    <form action="implicit-object.jsp">
        <input type="text" name="username" value="${param['username']}">
        <input type="submit">
    </form><br>
    <%session.setAttribute("user","abc");
    Cookie cookie = new Cookie("name","android");
    cookie.setMaxAge(5*3600);
    response.addCookie(cookie);
    %>
    <table border="1" width=660 bgcolor="aqua">
        <tr>
            <td width="170"><b>功能</b></td>
            <td width="200"><b>表达式语言</b></td>
            <td width="300"><b>计算结果</b></td>
        </tr>
        <tr>
            <td>获得请求参数的值</td>
            <td>\${param.username}}</td>
            <td>${param.username}</td>
        </tr>
        <tr>
            <td>获得请求参数的值</td>
            <td>\${param["username"]}}</td>
            <td>${param["username"]}</td>
        </tr>
        <tr>
            <td>获得请求头的值</td>
            <td>\${header.host}}</td>
            <td>${header.host}</td>
        </tr>
        <tr>
            <td>获得请求头的值</td>
            <td>\${header["accept"]}}</td>
            <td>${header["accept"]}</td>
        </tr>
        <tr>
            <td>获得session的值</td>
            <td>\${sessionScope["user"]}</td>
            <td>${sessionScope["user"]}</td>
        </tr>
        <tr>
            <td>获得Cookie的值</td>
            <td>\${cookie["name"].value}}</td>
            <td>${cookie["name"].value}</td>
        </tr>
    </table>
</body>
</html>
