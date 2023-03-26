<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP mapping</title>
</head>
<body>
<h1>Chapter09</h1>
<p><%=config.getInitParameter("paramName")%>
</p>
<p><%=application.getInitParameter("contextParamName")%>
</p>
<%
    application.setAttribute("attributeName", "attributeValue");
    response.sendRedirect("/jsp-attribute.jsp");
%>
</body>
</html>
