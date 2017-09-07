<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %><%--
  Created by IntelliJ IDEA.
  User: zxy
  Date: 2017/9/7
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用response输出图片</title>
</head>
<body>
        <%
            BufferedImage bufferedImage = new BufferedImage(340,160,BufferedImage.TYPE_INT_RGB);
            Graphics graphics = bufferedImage.getGraphics();
            graphics.fillRect(0,0,400,400);
            graphics.setColor(new Color(255,0,0));
            graphics.fillArc(20,20,100,100,30,120);
            graphics.setColor(new Color(0,255,0));
            graphics.fillArc(20,20,100,100,150,120);
            graphics.setColor(new Color(0,0,255));
            graphics.fillArc(20,20,100,100,270,120);
            graphics.setColor(new Color(0,0,0));
            graphics.setFont(new Font("Arial Black",Font.PLAIN,16));
            graphics.drawString("red:climb",200,60);
            graphics.drawString("green:swim",200,100);
            graphics.drawString("blue:jump",200,140);
            graphics.dispose();
            ImageIO.write(bufferedImage,"jpg",response.getOutputStream());
        %>
</body>
</html>
