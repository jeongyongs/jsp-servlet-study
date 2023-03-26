<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Result page</title>
</head>
<body>
<div class="container">
    <div class="window">
        <div class="header"></div>
        <div class="body">
            <article>
                <h1>Chapter13</h1>
                <p>
                    <%=request.getParameter("name")%>
                </p>
            </article>
        </div>
    </div>
</div>
</body>
</html>
