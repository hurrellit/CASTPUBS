<%@ 
page language="java" 
import="java.sql.*"
isErrorPage="true"
%>

<html>
<HEAD>
<LINK rel="StyleSheet" type="text/css" href="cwstyles.css">
<HEAD>
<body>
<h1>An exception has occured</h1>
<%= exception.getMessage() %>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<p align="center">
<FORM Action="Index.html">
<INPUT Type="submit" Value="Start again"></FORM> </P>
</body>
</html>