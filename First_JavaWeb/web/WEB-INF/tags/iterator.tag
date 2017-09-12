<%@ tag pageEncoding="utf-8" import="java.util.List" %>
<%@ attribute name="bgColor" %>
<%@ attribute name="title"%>
<table border="1" bgcolor="${bgColor}">
    <tr>
        <td><b>${title}</b></td>
    </tr>
    <%
        List<String> list = (List<String>) request.getAttribute("a");
        for (Object o : list) {%>
            <tr>
                <td>  
                    <%=o%>
                </td>
            </tr>
        <%}%>
</table>
