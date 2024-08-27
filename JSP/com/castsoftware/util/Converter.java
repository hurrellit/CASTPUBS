package com.castsoftware.util;

import java.text.*;

public class Converter extends Object
{

  public static int toInt( String textToConvert ) throws ParseException
  {
    return java.text.NumberFormat.getNumberInstance().parse(textToConvert).intValue();
  }


 public static String RestoreNull( String pString )
 {
  if ( pString != null )
  {
    if ( pString.compareTo("") == 0 )
    {
     pString = null;
    }
   }
  return pString;
 }

 public static String ConvertNull( String pString )
 {
  if ( pString == null )
  {
   pString = "";
  }
  return pString;
 }

}