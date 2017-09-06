<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/6
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用application获取web的配置参数</title>
</head>
<body>
    <%
        String driver = application.getInitParameter("driver");
        String url = application.getInitParameter("url");
        String user = application.getInitParameter("user");
        String password = application.getInitParameter("password");

        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from student");
    %>
    <table bgcolor="#7fffd4" width="300" border="1px">
        <%
            while (resultSet.next()) {
        %>
        <tr>
            <td><%=resultSet.getString(1)%></td>
            <td><%=resultSet.getString(2)%></td>
        </tr>
    <%}
    %>
    </table>
</body>
</html>
