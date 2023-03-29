package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/connection-pool")
public class ConnectionPool extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();

        DaoConnectionPool dao = new DaoConnectionPool();

        ArrayList<Dto> result = dao.select();

        for (Dto dto : result) {
            out.write(dto.getBookID() + " / ");
            out.write(dto.getBookName() + " / ");
            out.write(dto.getBookLoc() + "<br>");
        }
    }
}
