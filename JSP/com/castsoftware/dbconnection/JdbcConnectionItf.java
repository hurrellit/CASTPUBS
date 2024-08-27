package com.castsoftware.dbconnection;

import java.sql.*;

public interface JdbcConnectionItf
{
  public boolean connect() throws ClassNotFoundException, SQLException;
  public void close() throws SQLException;
  public ResultSet execSQL(String sql) throws SQLException;
}