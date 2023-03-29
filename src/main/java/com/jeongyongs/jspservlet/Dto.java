package com.jeongyongs.jspservlet;

public class Dto {
    private int bookID;
    private String bookName;
    private String bookLoc;

    public Dto(int bookID, String bookName, String bookLoc) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookLoc = bookLoc;
    }

    public int getBookID() {
        return bookID;
    }

    public String getBookName() {
        return bookName;
    }

    public String getBookLoc() {
        return bookLoc;
    }
}
