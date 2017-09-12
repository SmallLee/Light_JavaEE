<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/11
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示在线用户</title>
</head>
<body>
    <table width="300" border="1">
        <%
            Map<String,String> online = (Map<String, String>) application.getAttribute("online");
            for(String sessionId : online.keySet()) { %>
                <tr>
                    <td><%=sessionId%></td>
                    <td><%=online.get(sessionId)%></td>
                </tr>
            <%}
        %>
    </table>
</body>
</html>
