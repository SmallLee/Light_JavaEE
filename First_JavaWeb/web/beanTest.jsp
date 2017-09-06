<%@ page import="dao.Person" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/4
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page info="setInf2wer2o" %>
<html>
<head>
    <title>Java Bean测试</title>
</head>
<body>
    <jsp:useBean id="person" class="dao.Person" scope="page"/>
    <jsp:setProperty name="person" property="name" value="lxn"/>
    <jsp:setProperty name="person" property="age" value="25"/>
    <jsp:getProperty name="person" property="name"/>
    <jsp:getProperty name="person" property="age"/>
    <%=getServletInfo()%>
    <%
        out.println("hello");
    %>
</body>
</html>
