<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taken Classes</title>
</head>

<style>

h1 {text-align:center;}

table,th,td{

border:1px solid black;
border-collapse:collapse:

}

/*table.center {
margin-left:auto;
margin-right:auto;
}*/


</style>
<body>
<body>
		<% try {
			String userid = (String)session.getAttribute("user"); 
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the selected radio button from the index.jsp
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			String str = "select t.cid,c.cname,t.grade from taken t, courses c where t.cid = c.cid and t.sid =" + userid;
			ResultSet result = stmt.executeQuery(str);
		%>
			
		<!--  Make an HTML table to show the results in: -->
	
	<h3>CLASSES YOU'VE FINISHED</h3>
	
	<table class = "center">
		<tr>    
			<td>Course ID</td>
			<td>Course Name</td>
			<td>Grade</td>

		</tr>

			<%
			//parse out the results
			while (result.next()) { %>
				<tr>    
					<td>	<%= result.getString("cid") %>	</td>
					<td>	<%= result.getString("cname") %>	</td>
					<td>	<%= result.getString("grade") %>	</td>
				</tr>
				

			<% }
			//close the connection.
			db.closeConnection(con);
			%>
		</table>
			
		<%} catch (Exception e) {
			out.print(e);
		}%>
	
		<form method="post" action="studenthome.jsp">
		<input type="submit" value="go back" />
	</form>
	
	

	</body>
</body>
</html>