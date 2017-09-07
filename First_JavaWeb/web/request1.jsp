<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取表单的请求参数</title>
</head>
<body>
    <%
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String header = headerNames.nextElement();
            //获取每个请求投，以及对应的值
            out.println("headername--->"+header+"  headervalue--->"+request.getHeader(header)+"<br/>");
        }
        out.println("<br/>");
        //设置request编码采用的字符集
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String[] colors = request.getParameterValues("color");
        String country = request.getParameter("country");
    %>
    你的名字：<%=name%>
    性别：<%=gender%>
    颜色：<%for(String color: colors) {
        out.println(color);
    }%>
    国家：<%=country%>
</body>
</html>
<%--


headername--->host headervalue--->localhost:8080
headername--->connection headervalue--->keep-alive
headername--->content-length headervalue--->60
headername--->cache-control headervalue--->max-age=0
headername--->accept headervalue--->text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
headername--->origin headervalue--->http://localhost:8080
headername--->upgrade-insecure-requests headervalue--->1
headername--->user-agent headervalue--->Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.221 Safari/537.36 SE 2.X MetaSr 1.0
headername--->content-type headervalue--->application/x-www-form-urlencoded
headername--->referer headervalue--->http://localhost:8080/form.jsp
headername--->accept-encoding headervalue--->gzip, deflate
headername--->accept-language headervalue--->zh-CN,zh;q=0.8
headername--->cookie headervalue--->JSESSIONID=D337843F1858D6D53E82F68038D67A79

--%>