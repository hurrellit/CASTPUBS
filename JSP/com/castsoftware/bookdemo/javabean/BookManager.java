package com.castsoftware.bookdemo.javabean;

/**
 * BookManager Object : Manages info about Books 
 */

import java.sql.*;

public class BookManager extends Manager
{

 public void BookManager()
 {
 }

 public ResultSet getListeTitles( Author author ) throws SQLException
 {
  ResultSet lResult = null;

   try
   {
    lResult = this.getOraCon().execSQL("getListTiles" );
   } catch (SQLException e)
     { throw e;}
	 

  return lResult;
 }
 
}
