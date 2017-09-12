<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>使用tag文件自定义标签</title>
</head>
<body>
    <%
        List<String> list = new ArrayList<String>();
        list.add("A");
        list.add("B");
        list.add("C");
        request.setAttribute("a",list);%>
//        使用自定义标签
        <test:iterator title="迭代" bgColor="#ff0000"/>
</body>
</html>
