<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>ʹ��tag�ļ��Զ����ǩ</title>
</head>
<body>
    <%
        List<String> list = new ArrayList<String>();
        list.add("A");
        list.add("B");
        list.add("C");
        request.setAttribute("a",list);%>
//        ʹ���Զ����ǩ
        <test:iterator title="����" bgColor="#ff0000"/>
</body>
</html>
