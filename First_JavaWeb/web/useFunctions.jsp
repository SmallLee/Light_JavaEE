<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/11
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" uri="http://github.smallee/mytaglib" %>
<html>
<head>
    <title>JSP�Զ��庯��</title>
</head>
<body>
    <h2>���ʽ����---�Զ��庯��</h2>
    <form action="useFunctions.jsp">
        <input type="text" name="name">
        <input type="submit">
    </form>
    <table border="1" bgcolor="aqua">
        <tr>
            <td>\${param.name}}</td>
            <td>${param.name}</td>
        </tr>
        <tr>
            <td>\${reverse}}</td>
            <td>${test:reverse(param.name)}</td>
        </tr>
    </table>
</body>
</html>
