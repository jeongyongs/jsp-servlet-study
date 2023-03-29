package com.jeongyongs.jspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/jdbc")
public class OracleJdbc extends HttpServlet {
    String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
    String db_id = "scott";
    String db_pw = "tiger";
    String sql = "SELECT * FROM books";

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            PrintWriter out = resp.getWriter();
            Class.forName("oracle.jdbc.driver.OracleDriver");

            connection = DriverManager.getConnection(db_url, db_id, db_pw);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getResultSet();

            out.write("<html>");
            out.write("<head>");
            out.write("<meta charset=\"UTF-8\">");
            out.write("<link rel=\"stylesheet\" href=\"style.css\">");
            out.write("<title>Oracle DB</title>");
            out.write("</head>");
            out.write("<body>");

            while (resultSet.next()) {
                String bookName = resultSet.getString("book_name");
                String bookLoc = resultSet.getString("book_loc");
                out.write("<div class=\"box\">");
                out.write("<p>" + bookName + " " + bookLoc + "</p>");
                out.write("</div>");
            }

            out.write("</body>");
            out.write("</html>");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }

                if (connection != null) {
                    connection.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
