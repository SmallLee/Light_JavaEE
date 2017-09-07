<%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单发送post请求</title>
</head>
<body>
<form id="form1" action="firstservlet" method="post">
    用户名：<br/>
    <input type="text" name="name"><br/>
    性别：<br/>
    男：<input type="radio" name="gender" value="男"> 女：<input type="radio" name="gender" value="女"><br/>
    喜欢的颜色：<br/>
    红： <input type="checkbox" name="color" value="red"> 绿：<input type="checkbox" name="color" value="green"><br/>
    来自的国家：<br/>
    <select name="country">
        <option value="china">中国</option>
        <option value="usa">美国</option>
        <option value="germany">德国</option>
    </select><br/>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
