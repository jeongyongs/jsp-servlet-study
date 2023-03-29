package com.jeongyongs.jspservlet;

import java.sql.*;
import java.util.ArrayList;

public class Dao implements IDao {
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String db_id = "scott";
    String db_pw = "tiger";

    public Dao() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public ArrayList<Dto> select() {
        ArrayList<Dto> bookList = new ArrayList<Dto>();

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String sql = "SELECT * FROM books";

        try {
            connection = DriverManager.getConnection(url, db_id, db_pw);
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int bookId = resultSet.getInt("book_id");
                String bookName = resultSet.getString("book_name");
                String bookLoc = resultSet.getString("book_loc");

                bookList.add(new Dto(bookId, bookName, bookLoc));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return bookList;
    }
}
