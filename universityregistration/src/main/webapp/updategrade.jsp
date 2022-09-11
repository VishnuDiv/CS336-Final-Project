<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<% try {
	
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();		

			//Create a SQL statement
			Statement stmt = con.createStatement();
			String grade=request.getParameter("grade");
			String rid=request.getParameter("rid");
			//Get the selected radio button from the index.jsp
			//String entity = request.getParameter("command");
			//String entity2 = "courses"
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			//String str = "SELECT * FROM " + entity;
										
					
			String sql = "update register set grade = '" + grade+"' where rid = " + rid;
			//Run the query against the database.
			stmt.execute(sql);
			response.sendRedirect("show.jsp");
		%>
			 
		<!--  Make an HTML table to show the results in: -->
	<table>
		<tr>    
			<td>
			Grade Updated Successfully
			</td>
			
		
		</tr>
			<%
			//parse out the results
			
			
			//close the connection.
			db.closeConnection(con);
			%>
		</table>

			
		<%} catch (Exception e) {
			out.print(e);
		}%>
	

	</body>
</html>