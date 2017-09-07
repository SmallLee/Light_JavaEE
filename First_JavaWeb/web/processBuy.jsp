<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String,Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
    if (itemMap == null) {
        itemMap = new HashMap<String,Integer>();
        itemMap.put("书籍",0);
        itemMap.put("电影",0);
        itemMap.put("汽车",0);
    }
    //获得请求参数的值
    String[] items = request.getParameterValues("item");
    for (String item : items) {
        if (item.equals("book")) {
            int num = itemMap.get("书籍");
            itemMap.put("书籍",num+1);
        } else if (item.equals("movie")) {
            int num2 = itemMap.get("电影");
            itemMap.put("电影",num2+1);
        } else {
            int num3 = itemMap.get("汽车");
            itemMap.put("汽车",num3+1);
        }
    }
    session.setAttribute("itemMap",itemMap);
%>
<html>
<head>
    <title>处理购买的商品</title>
</head>
<body>
    购买的物品：<br>
    书籍<%=itemMap.get("书籍")%><br>
    电影<%=itemMap.get("电影")%><br>
    汽车<%=itemMap.get("汽车")%>
    <a href="shop.jsp">再次购买</a>
</body>
</html>
