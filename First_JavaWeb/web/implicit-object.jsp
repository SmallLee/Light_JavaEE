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
    <title>���ö���</title>
</head>
<body>
    <h2>���ʽ���ö���ʹ��</h2>
    ������������֣�
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
            <td width="170"><b>����</b></td>
            <td width="200"><b>���ʽ����</b></td>
            <td width="300"><b>������</b></td>
        </tr>
        <tr>
            <td>������������ֵ</td>
            <td>\${param.username}}</td>
            <td>${param.username}</td>
        </tr>
        <tr>
            <td>������������ֵ</td>
            <td>\${param["username"]}}</td>
            <td>${param["username"]}</td>
        </tr>
        <tr>
            <td>�������ͷ��ֵ</td>
            <td>\${header.host}}</td>
            <td>${header.host}</td>
        </tr>
        <tr>
            <td>�������ͷ��ֵ</td>
            <td>\${header["accept"]}}</td>
            <td>${header["accept"]}</td>
        </tr>
        <tr>
            <td>���session��ֵ</td>
            <td>\${sessionScope["user"]}</td>
            <td>${sessionScope["user"]}</td>
        </tr>
        <tr>
            <td>���Cookie��ֵ</td>
            <td>\${cookie["name"].value}}</td>
            <td>${cookie["name"].value}</td>
        </tr>
    </table>
</body>
</html>
