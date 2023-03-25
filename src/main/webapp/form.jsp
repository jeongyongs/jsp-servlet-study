<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP form</title>
</head>
<body>
<%!
    String id;
    String pw;
%>
<%
    id = request.getParameter("id");
    pw = request.getParameter("pw");
%>
<p>id: <%=id%>
</p>
<p>pw: <%=pw%>
</p>
</body>
</html>
