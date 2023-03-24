<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

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
            padding: 5px 20px;
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
                <a href="jsp-preview.jsp"><div><p>jsp-preview.jsp</p></div></a>
                <a href="servlet-mapping"><div><p>servlet-mapping</p></div></a>
                <a href="servlet-mapping-2"><div><p>servlet-mapping-2</p></div></a>
            </article>
        </div>
    </div>
</div>
</body>
</html>
