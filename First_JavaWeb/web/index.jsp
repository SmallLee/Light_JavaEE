<%@ page import="dao.Person" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/8/31
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@page info ="getInf23"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>����</title>
  </head>
  <body>
  �����
  ${1+2}
  <%
    Person p = new Person();
    System.out.println(p.getPersonInfo());

  %>
  adsfd
  </body>
</html>
