
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" uri="http://github.smallee/mytaglib" %>
<html>
<head>
    <title>以片段来定义fragment</title>
</head>
<body>
    <test:fragment>
        <jsp:attribute name="fragment">
              <test:helloworld/>
        </jsp:attribute>
    </test:fragment>
    <test:fragment>
        <jsp:attribute name="fragment">
        ${pageContext.request.remoteAddr}
        </jsp:attribute>
    </test:fragment>
</body>
</html>
