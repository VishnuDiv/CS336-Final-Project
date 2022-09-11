<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classes</title>
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
			String entity = request.getParameter("command");
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			String str = "SELECT s.cid,s.section,s.stime,s.sday,p.pname FROM semester s, professor p WHERE s.pid = p.pid";
			ResultSet result = stmt.executeQuery(str);
		%>
			
		<!--  Make an HTML table to show the results in: -->
	
	<h3>ALL AVAILABLE CLASSES THIS SEMESTER</h3>
	
	<table class = "center">
		<tr>    
			<td>Course ID</td>
			<td>Section #</td>
			<td>Time</td>
			<td>Day</td>
			<td>Professor</td>

		</tr>

			<%
			int i = 0;
			//parse out the results
			while (result.next()) { %>
				<tr>    
					<td>	<%= result.getString("cid") %>	</td>
					<td>	<%= result.getString("section") %>	</td>
					<td>	<%= result.getString("stime") %>	</td>
					<td>	<%= result.getString("sday") %>	</td>
					<td>	<%= result.getString("pname") %>	</td>
				</tr>
				

			<% }
			//close the connection.
			%>
		</table>
		
	<h3>CLASSES YOU CAN ENROLL IN FOR THIS SEMESTER</h3>
	
			<% str = "select s.cid,s.section,s.stime,s.sday,p.pname FROM semester s, professor p WHERE s.pid = p.pid and cid in(select cid from (select s.cid,(select count(*) from( select prereq from prereqs p where p.cid = s.cid) as t1 where t1.prereq not in(select cid from taken where sid =" +userid +"))as newc from semester s having newc=0)cid);";
			
			result = stmt.executeQuery(str);%>
	
	
	<table class = "center">
		<tr>    
			<td>Course ID</td>
			<td>Section #</td>
			<td>Time</td>
			<td>Day</td>
			<td>Professor</td>

		</tr>

			<%
			//parse out the results
			while (result.next()) { %>
				<tr>    
					<td>	<%= result.getString("cid") %>	</td>
					<td>	<%= result.getString("section") %>	</td>
					<td>	<%= result.getString("stime") %>	</td>
					<td>	<%= result.getString("sday") %>	</td>
					<td>	<%= result.getString("pname") %>	</td>
				</tr>
				

			<% }
			//close the connection.
			db.closeConnection(con);
			%>
		</table>
	
		<%} catch (Exception e) {
			out.print(e);
		}%>
		
		Enroll in a Class!
		<br>
		<form method="get" action="add.jsp">
			<table>
				<tr>    
					<td>Course ID</td><td><input type="text" name="courses"></td>
				</tr>
				<tr>
					<td>Section Number</td><td><input type="text" name="secnum"></td>
				</tr>
			</table>
			<input type="submit" value="Join Class!">
		</form>
	<br>
	
		<form method="post" action="studenthome.jsp">
		<input type="submit" value="go back" />
	</form>
	
	

	</body>
</body>
</html>