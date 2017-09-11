<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/11
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" uri="http://github.smallee/mytaglib" %>
<html>
<head>
    <title>动态属性的标签</title>
</head>
<body>
<h3>指定两个属性</h3>
    <test:dynaAttr name="crazyit" url="www.android.com"/>
<h3>指定4个属性</h3>
    <test:dynaAttr name="疯狂java讲义" price="55"
    出版时间="2017" 描述="java入门"
    />
</body>
</html>
