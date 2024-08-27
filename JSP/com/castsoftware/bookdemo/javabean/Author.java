package com.castsoftware.bookdemo.javabean;

import java.util.*;

/**
 * Author Object
 * that has 3 private members : FirstName, LastName & List of Books.
 */

 
public class Author extends Object
{
  private String authorLastName = null;
  private String authorFirstName = null;
  private Vector authorBookList = null;

 public void Author()
 {
 }

 public void init()
 {
  this.authorLastName = null;
  this.authorFirstName = null;
  this.authorBookList = null;
 }

//setters & getters

 public String getLastName() { return this.authorLastName; }
 public String getFirstName() { return this.authorFirstName; }
 public Vector getBookList() { return this.authorBookList; }
 public void setFirstName( String aFirstName ) { this.authorFirstName = aFirstName; }
 public void setLastName( String aLastName ) { this.authorLastName = aLastName; }
 public void setBookList( Vector aBookList ) { this.authorBookList = aBookList; }

}
