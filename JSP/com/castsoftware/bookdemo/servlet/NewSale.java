package com.castsoftware.bookdemo.servlet;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.castsoftware.dbconnection.*;
import com.castsoftware.bookdemo.javabean.*;
import com.castsoftware.util.*;

public class NewSale extends BookDemoServletMaster implements BookDemoServletItf
{
 private OracleConnection oraCon = null;
 private int lQty;
 private int lDisc;
 private String lTitle = null;
  
 private ResultSet rs=null;

 private void InsertNewSale( String title, int quantity, int discount ) throws Exception
 {
     CallableStatement cs = this.oraCon.getConnection().prepareCall("{ call SalePkg.NewCreateSale(?,?,?) }");
     cs.setString( 1,lTitle);
     cs.setInt( 2, lQty );
     cs.setInt( 3, lDisc );
     cs.executeQuery();
     cs.close();  
 }
 
 public void doGet(HttpServletRequest req,
                   HttpServletResponse res)
   throws IOException
  {
    ServletOutputStream out = res.getOutputStream();
    res.setContentType("text/html");
 
    HttpSession session = req.getSession(true);
    oraCon = (com.castsoftware.dbconnection.OracleConnection) session.getValue("connection");
    
    lTitle = req.getParameter("titleid");
    try 
    { 
      Converter converter = new Converter();
      lQty = converter.toInt(req.getParameter("Qty2"));
    } catch ( ParseException pe ) { lQty = 0; }
    
    try 
    { 
      Converter converter = new Converter();
      lDisc = converter.toInt(req.getParameter("Dsct2")); 
    } catch ( ParseException pe ) { lDisc = 0; }
    
    try{
     	InsertNewSale(lTitle, lQty, lDisc);
     	res.sendRedirect("/JspBookDemo/SalesCreated.html");
    } catch( Exception e )
      {
      	res.sendRedirect("/JspBookDemo/SalesCreated.html");
      }
  }
}
