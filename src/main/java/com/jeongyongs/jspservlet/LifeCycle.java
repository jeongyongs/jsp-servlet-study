package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/life-cycle")
public class LifeCycle extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("----- init -----");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.write("<h1>Chapter05</h1>");
        out.write("<h1>Servlet life cycle</h1>");
    }

    @Override
    public void destroy() {
        System.out.println("----- destroy -----");
    }
}
