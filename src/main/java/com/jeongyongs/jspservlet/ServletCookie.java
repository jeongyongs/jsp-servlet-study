package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class ServletCookie extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get cookies
        Cookie[] cookies = req.getCookies();
        Cookie cookie = null;

        // print title
        PrintWriter out = resp.getWriter();
        out.write("<h1>Chapter11</h1>");

        // find cookie named 'memberID'
        for (Cookie c : cookies) {
            out.write("<p>[" + c.getName() + "] " + c.getValue() + "</p>");
            out.write("---------------------------------------");

            if (c.getName().equals("memberID")) {
                cookie = c;
            }

            if (cookie == null) {
                cookie = new Cookie("memberID", req.getParameter("id"));
                cookie.setMaxAge(30);
                resp.addCookie(cookie);
            }
        }
    }
}
