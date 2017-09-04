<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/8/31
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>连接数据库</title>
</head>
<body>
    <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "123456");
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from student");
    %>
    <table bgcolor="#7fffd4" border="1" width="200px">
    <%  while(resultSet.next()) {  %>
    <tr>
        <td><%=resultSet.getString(1)%></td>
        <td><%=resultSet.getString(2)%></td>
    </tr>
    <%}%>
    </table>
</body>
</html>
