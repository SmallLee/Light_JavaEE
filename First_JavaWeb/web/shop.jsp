<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session使用，选择物品购买</title>
</head>
<body>
    <form action="processBuy.jsp" method="post">
        书籍：<input type="checkbox" name="item" value="book"><br>
        电影：<input type="checkbox" name="item" value="movie"><br>
        汽车: <input type="checkbox" name="item" value="car"><br>
        <input type="submit" value="购买">
    </form>
</body>
</html>
