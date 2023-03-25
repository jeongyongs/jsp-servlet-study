<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP script</title>
</head>
<body>
<%@include file="jsp-header.jsp" %>
<%! // declaration
    int num = 10;
    String str = "jsp";
    ArrayList<String> list = new ArrayList<String>();

    public void jspMethod() {
        System.out.println("jspMethod()");
    }
%>
<%--This is comment--%>
<%
    if (num > 0) {
%>
<p>num > 0</p>
<%
} else {
%>
<p>num <= 0</p>
<%
    }
%>
<p>num is <%=num%>
</p>
</body>
</html>
