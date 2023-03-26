<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">

    <title>Login - Session</title>

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
            text-align: center;
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
        }

        article a div p {
            font-size: 15px;
        }

        article input {
            margin-bottom: 10px;
            background-color: #F1F1F1;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            outline: none;

            box-sizing: border-box;
            display: block;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #F1F1F1;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%
    if (session.getAttribute("memberID") != null) {
        response.sendRedirect("/");
    }
%>
<div class="container">
    <div class="window">
        <div class="head">
            <div class="window-button"></div>
            <div class="window-button"></div>
            <div class="window-button"></div>
        </div>
        <div class="body">
            <article>
                <h1>Chapter12</h1>
                <form action="login-session" method="post">
                    <input type="text" name="id" id="id" placeholder="ID">
                    <input type="password" name="pw" placeholder="PW">
                    <input type="submit" value="Submit">
                </form>
            </article>
        </div>
    </div>
</div>
</body>
</html>
