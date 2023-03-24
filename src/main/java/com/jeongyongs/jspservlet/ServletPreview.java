package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet-preview")
public class ServletPreview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get writer
        PrintWriter out = resp.getWriter();
        // response
        out.write("<html>");
        out.write("<head></head>");
        out.write("<body>");
        out.write("<h1>Chapter02</h1>");
        out.write("<h1>This is the servlet preview.</h1>");
        out.write("</body>");
        out.write("</html>");
    }
}
