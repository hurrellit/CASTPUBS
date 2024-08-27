package com.castsoftware.bookdemo.javabean;

import java.sql.*;
import com.castsoftware.dbconnection.*;

public class Manager extends Object
{
  private OracleConnection oraCon = null;
  
 //setters & getters

 public void setOracleConnection( OracleConnection aConnection ) { this.oraCon = aConnection; }
 public Connection getDbConnection() { return this.oraCon.getConnection(); } 
 public OracleConnection getOraCon() { return this.oraCon; }
}