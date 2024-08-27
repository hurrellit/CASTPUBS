package com.castsoftware.util.gui;

import java.sql.*;

public class GuiHtml extends Object
{
  public GuiHtml()
  {
  }

  public static String inAlertMessage( String text )
  {
   return "<SCRIPT=\"JavaScript\">alert(\""+text+"\");</SCRIPT>";
  }
  
  public static String inOptionTag( String value, String name )
  {
   return "<option value="+value+">"+name+"</option>\n";
  }

  public static String inOptionTag( String selectName, ResultSet rs, String valueColumnName, String nameColumnName )
  {
   String lResult = "<select name=\""+selectName+"\" size=1>\n";

   try
   {
     while( rs.next() )
     {
       lResult += inOptionTag( rs.getString( valueColumnName ), rs.getString( nameColumnName ) );
     }
   } catch (SQLException e)
     {
       lResult = "SQLException : "+ e.getMessage();
     }

   lResult += "</select>\n";
   return lResult;
  }

  public static String inTable( ResultSet rs )
  {
    return inTable( rs, true );
  }

  public static String inTable( ResultSet rs, boolean b )
  {
   String result = null;
   ResultSetMetaData rsmd = null;
   boolean firstTime = true;

   result = "\n<table border width=100%>\n";
   
   try
   {
     rsmd = rs.getMetaData();

     while( rs.next() )
     {
       
       if ( b && firstTime )
        {
          result += "  <TR>\n";
          for( int i=1; i<=rsmd.getColumnCount(); i++)
           {
            result += "    <TH CLASS=\"Array\">"+rsmd.getColumnLabel( i )+"</TH>\n";
           }
          result += "  </TR>\n";
        }
        firstTime = false;
        result += "  <TR>\n";
 	for( int j=1; j<=rsmd.getColumnCount(); j++)
         {
          result += "    <TD CLASS=\"Array\">"+rs.getString(rsmd.getColumnLabel( j ))+"</TD>\n";
         }
        result += "  </TR>\n";
     }
   } catch (SQLException e)
     {
       result = "SQLException : "+ e.getMessage();
     }
      catch(NullPointerException npe)
      { 
        result = "empty result set";
      }

   return result+"</TABLE>";
  }

 public static String checked ( String val1, String val2 )
 {
   try{
	return ( val1.compareTo(val2) == 0 ? "checked":"" );
      } catch ( NullPointerException npe )
	{ return ""; }

 }

 public static String checked ( String val1 )
 {
   return checked( val1, "on");
 }

}