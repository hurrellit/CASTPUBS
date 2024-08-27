package com.castsoftware.bookdemo.javabean;

/**
 * Book Object
 * that has 2 private members : Author & Title.
 */
 
public class Book extends Object
{
    private String bookAuthor = null;
    private String bookTitle = null;

    public void Book ()
    {
    }

//setters & getters

    public String getAuthor() { return bookAuthor; }
    public String getTitle() { return bookTitle; }
    public void setAuthor( String aBookAuthor ) { this.bookAuthor = aBookAuthor; }
    public void setTitle( String aBookTitle ) { this.bookTitle = aBookTitle; }

}