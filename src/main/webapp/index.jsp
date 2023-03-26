<%@ page import="java.net.InetAddress" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">

    <title>JSP and Servlet</title>

    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #1a1a1a;
            margin: 0;
        }

        .window {
            background-color: #252525;
            border-radius: 10px;
            box-shadow: 1px 1px 20px #151515;
            min-width: 480px;
            width: 70vw;
            height: 480px;
            margin: 0 auto;
            margin-top: 50px;
            padding: 20px;
        }

        .body {
            height: 456px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .window-button {
            display: inline-block;
            border-radius: 100px;
            width: 15px;
            height: 15px;
            background-color: #414141;
            margin-right: 4px;
        }

        h1 {
            color: #F1F1F1;
            font-size: 50px;
            margin: 0 0 20px;
        }

        p {
            margin: 0 0 5px;
            font-weight: 100;
            color: #F1F1F1;
            font-size: 20px;
        }

        a {
            text-decoration: none;
        }

        article div {
            display: inline-block;
            background-color: #414141;
            border-radius: 10px;
            padding: 1px 15px;
            margin-bottom: 5px;
        }

        article a div p {
            font-size: 15px;
        }

        article h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="window">
        <div class="head">
            <div class="window-button"></div>
            <div class="window-button"></div>
            <div class="window-button"></div>
        </div>
        <div class="body">
            <article>
                <p><%=request.getLocalAddr()%>
                </p>
                <p><%=request.getRemoteAddr()%>
                </p>
                <h1>Hello, World;</h1>
                <p># JSP and Servlet study ;</p>
                <p># This is the index page ;</p>
            </article>
        </div>
    </div>
    <div class="window">
        <div class="head">
            <div class="window-button"></div>
            <div class="window-button"></div>
            <div class="window-button"></div>
        </div>
        <div class="body">
            <article>
                <h1>Links</h1>
                <a href="jsp-preview.jsp">
                    <div><p>jsp-preview.jsp</p></div>
                </a>
                <a href="servlet-mapping">
                    <div><p>servlet-mapping</p></div>
                </a>
                <a href="servlet-mapping-2">
                    <div><p>servlet-mapping-2</p></div>
                </a>
                <a href="life-cycle">
                    <div><p>life-cycle</p></div>
                </a>
                <a href="form.html">
                    <div><p>form.html</p></div>
                </a>
                <a href="jsp-script.jsp">
                    <div><p>jsp-script.jsp</p></div>
                </a>
                <a href="form-jsp.html">
                    <div><p>form-jsp.html</p></div>
                </a>
                <a href="response.jsp">
                    <div><p>response.jsp</p></div>
                </a>
                <a href="jsp-mapping">
                    <div><p>jsp-mapping</p></div>
                </a>
                <a href="data-share">
                    <div><p>data-share</p></div>
                </a>
                <a href="login.jsp">
                    <div><p>login.jsp</p></div>
                </a>
                <a href="login-session.jsp">
                    <div><p>login-session.jsp</p></div>
                </a>
                <a href="korean.jsp">
                    <div><p>korean.jsp</p></div>
                </a>
                <a href="korean-to-jsp.jsp">
                    <div><p>korean-to-jsp.jsp</p></div>
                </a>
            </article>
        </div>
    </div>
</div>
</body>
</html>
