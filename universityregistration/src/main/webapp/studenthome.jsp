<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Student Home Page</title>
	</head>
	
	<body>

		Welcome Student! <!-- the usual HTML way -->
		<% out.println(""); %> <!-- output the same thing, but using 
	                                      jsp programming -->
							  
		<br>
	
		 <!-- Show html form to i) display something, ii) choose an action via a 
		  | radio button -->
		<!-- forms are used to collect user input 
			The default method when submitting form data is GET.
			However, when GET is used, the submitted form data will be visible in the page address field-->

		<form method="post" action="viewclasses.jsp">
			<input type="submit" value="Join A Class!" />
		</form>
		<br>
		<br>
		<form method="post" action="enrolledin.jsp">
			<input type="submit" value="View Classes you've enrolled in!" />
		</form>
		<br>
		<br>
		<form method="post" action="taken.jsp">
			<input type="submit" value="View Classes you've already taken!" />
		</form>
		<br>
		<br>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="Logout" />
	</form>
	
</body>
</html>