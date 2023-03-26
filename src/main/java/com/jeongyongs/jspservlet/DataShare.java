package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class DataShare extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.write("<h1>Chapter10</h1>");
        out.write("<p>" + getServletConfig().getInitParameter("initParam") + "</p>");
        out.write("<p>" + getServletContext().getInitParameter("contextParamName") + "</p>");
        out.write("<p>" + getServletContext().getAttribute("attributeName") + "</p>");
    }
}
