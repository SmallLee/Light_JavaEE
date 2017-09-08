<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/8
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" uri="http://github.smallee/mytaglib" %>
<html>
<head>
    <title>带标签体的标签</title>
</head>
<body>
    <%
        List<String> list = new ArrayList<String>();
        list.add("android");
        list.add("java");
        list.add("html");
        //将list对象放入page
        pageContext.setAttribute("s",list);
    %>
    <table bgcolor="#7fffd4"  width="300">
        <test:iterator collection="s" item="item">
            <tr>
                <td>${pageScope.item}</td>
            </tr>
        </test:iterator>
    </table>
</body>
</html>
