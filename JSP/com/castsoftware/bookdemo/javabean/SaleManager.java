package com.castsoftware.bookdemo.javabean;

import java.sql.*;
import java.text.*;

import com.castsoftware.dbconnection.*;
import com.castsoftware.util.*;

public class SaleManager extends Manager
{
 public void SaleManager()
 {
 }
 
 public void InsertNewSale( String pTitle_ID, String pQuantity, String pDiscount ) throws Exception, ParseException
 {
  int lQuantity = 0;
  int lDiscount = 0;
  Converter converter = new Converter();
  
    try
    {
      lQuantity = converter.toInt(pQuantity);
      lDiscount = converter.toInt(pDiscount);
    } catch ( ParseException e )
      {
       throw e;
      }

    try
    {
     CallableStatement cs = this.getDbConnection().prepareCall("{ call SalePkg.NewCreateSale(?,?,?) }");
     cs.setString( 1,pTitle_ID   );
     cs.setInt( 2, lQuantity );
     cs.setInt( 3, lDiscount );
     
     cs.executeQuery();
     cs.close();
    } catch (Exception e)
     {
      throw e;
     }

 }
}