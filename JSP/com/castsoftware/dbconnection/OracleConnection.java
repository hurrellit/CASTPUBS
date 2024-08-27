package com.castsoftware.dbconnection;

import java.sql.*;
import java.io.*;
import oracle.jdbc.driver.*;

public class OracleConnection extends JdbcConnection implements JdbcConnectionItf
{
  public void OracleConnection()
  {
   this.setDriver("oracle.jdbc.driver.OracleDriver");
   this.setUrl("jdbc:oracle:thin:@");
  }

  public boolean connect() throws ClassNotFoundException, SQLException
  {
   Class.forName(this.getDriver());
   this.setConnection( DriverManager.getConnection( this.getUrl()+this.getServerUrl(),this.getLogin(), this.getPassword() ) );
   return true;
  }

  public void close() throws SQLException
  {
   this.getConnection().close();
  }

  public ResultSet execSQL(String sql) throws SQLException
  {
   Statement s = null;
   ResultSet r = null;
   s = this.getConnection().createStatement();
   r = s.executeQuery(sql);
   return ( r == null ) ? null : r;
  }

 public void finalize()
 {
 }

}
