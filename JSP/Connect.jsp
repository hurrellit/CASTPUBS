<%@ 
	page language="java" 
	import="com.castsoftware.dbconnection.*" 
	import="com.castsoftware.util.gui.*"
	import="java.sql.*"
%>
<!-- mon commebtaire -->
<jsp:useBean id="connection" class="com.castsoftware.dbconnection.OracleConnection" scope="session"/>
<%
  connection.setDriver("oracle.jdbc.driver.OracleDriver");
  connection.setUrl("jdbc:oracle:thin:@");
  connection.setLogin( request.getParameter("login") );
  connection.setPassword( request.getParameter("password") );
  connection.setServerUrl( request.getParameter( "server" )
                           + ":"
                           + request.getParameter( "port" )
                           + ":"
                           + request.getParameter( "sid" ) );
  try
   {
     connection.connect();
     response.sendRedirect("ListAuthors.jsp");
     out.println("connected");
   } catch (ClassNotFoundException e)
     {
	//      out.println(GuiHtml.inAlertMessage("ClassNotFoundException: " + e.getMessage()));
     } catch (SQLException e)
       {
        //  out.println(GuiHtml.inAlertMessage("SQLException: " + e.getMessage()));
       }
%>
