package com.castsoftware.dbconnection;

import java.sql.*;
import java.io.*;

public class JdbcConnection extends JdbcConnectionAbstract
{

  private String dbServerUrl = null;
  private String dbDriver = null;
  private String dbLogin = null;
  private String dbPassword = null;
  private Connection dbConnection = null;
  private String dbUrl = null; 

  public void JdbcConnection( String aDbLogin, String aDbPassword )
  {
   this.dbLogin = aDbLogin;
   this.dbPassword = aDbPassword;
  }

  public void JdbcConnection()
  {
  }

  public void finalize()
  {
  }

// setters & getters

  public Connection getConnection() {  return this.dbConnection; }
  public String getDriver() { return this.dbDriver; }
  public String getUrl() { return this.dbUrl; }
  public String getLogin() { return this.dbLogin; }
  public String getPassword() { return this.dbPassword; }
  public String getServerUrl() { return this.dbServerUrl; }
  public void setConnection( Connection aDbConnection ) { this.dbConnection = aDbConnection; }
  public void setServerUrl( String aDbServerUrl ) { this.dbServerUrl = aDbServerUrl; }
  public void setLogin(String aDbLogin ) { this.dbLogin = aDbLogin; }
  public void setPassword( String aDbPassword ) { this.dbPassword  = aDbPassword; }
  public void setDriver(String aDbDriver ) { this.dbDriver = aDbDriver; }
  public void setUrl (String aDbUrl) { this.dbUrl = aDbUrl; }
 
}
