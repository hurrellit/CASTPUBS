package com.castsoftware.bookdemo.javabean;

/**
 * AuthorManager Object : Manages info about Authors (and Books)
 * that has 3 private members : FirstName, LastName & List of Books.
 */
 
import java.sql.*;
 
public class AuthorManager extends Manager
{

 public void AuthorManager()
 {
 }

 public String getListeAuthors() throws SQLException
 {
  ResultSet rs=null;
  String lResult = "";

  try
  {
    rs = this.getOraCon().execSQL("Select au_lname, au_fname FROM authors" );
  } catch (SQLException e)
    { throw e; }

   try
   {
    while( rs.next() )
    {
	 lResult += "<tr><td width=\"53%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_LNAME" )+"</a></div></td> \n";
	 lResult += "<td width=\"47%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_FNAME" )+"</a></div></td></tr> \n";
    }
   } catch (SQLException e)
     { throw e; }

  return lResult;
 }


 public String getListeAuthorsInsert() throws SQLException
 {
  ResultSet rs=null;
  String lResult = "";

  try
  {
    rs = this.getOraCon().execSQL("insert into authors" );
  } catch (SQLException e)
    { throw e; }

   try
   {
    while( rs.next() )
    {
	 lResult += "<tr><td width=\"53%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_LNAME" )+"</a></div></td> \n";
	 lResult += "<td width=\"47%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_FNAME" )+"</a></div></td></tr> \n";
    }
   } catch (SQLException e)
     { throw e; }

  return lResult;
 }

 public String getListeAuthorsUpdate() throws SQLException
 {
  ResultSet rs=null;
  String lResult = "";

  try
  {
    rs = this.getOraCon().execSQL("update authors" );
  } catch (SQLException e)
    { throw e; }

   try
   {
    while( rs.next() )
    {
	 lResult += "delete authors";
    }
   } catch (SQLException e)
     { throw e; }

   try
   {
    while( rs.next() )
    {
	 lResult += "<tr><td width=\"53%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_LNAME" )+"</a></div></td> \n";
	 lResult += "<td width=\"47%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_FNAME" )+"</a></div></td></tr> \n";
    }
   } catch (SQLException e)
     { throw e; }

  return lResult;
 }

 public String getListeAuthorsDelete() throws SQLException
 {
  ResultSet rs=null;
  String lResult = "";

  try
  {
    rs = this.getOraCon().execSQL("delete authors");
  } catch (SQLException e)
    { throw e; }

   try
   {
    while( rs.next() )
    {
	 lResult += "<tr><td width=\"53%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_LNAME" )+"</a></div></td> \n";
	 lResult += "<td width=\"47%\">";
	 lResult += "<div align=\"center\"><a href=\"ListTitles.jsp?lname="+rs.getString( "AU_LNAME" )+"&fname="+rs.getString( "AU_FNAME" )+"\">";
	 lResult += rs.getString( "AU_FNAME" )+"</a></div></td></tr> \n";
    }
   } catch (SQLException e)
     { throw e; }

  return lResult;
 }
}
