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
			//Get the selected radio button from the index.jsp
			//String entity = request.getParameter("command");
			//String entity2 = "courses"
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			//String str = "SELECT * FROM " + entity;
					 int username = Integer.valueOf((String)session.getAttribute("user"));
					 String password = (String)session.getAttribute("pass");
					 int type = 2;
					 String tempAss = "\"" + password + "\"";
					
					 String name = "students";
					 String login = "select DISTINCT l.id,l.pass,p.pname from professor p, login l where l.id=p.pid and l.pass = " + tempAss + " having l.id= " + username;
					 ResultSet result2 = stmt.executeQuery(login);
					 
					int Uid = 0;
					String checkPass = null;
					String profName = null;
				while(result2.next()){
					Uid = result2.getInt("id");
					String tuffPass=result2.getString("pass");
					checkPass=tuffPass;
					profName=result2.getString("pname");
				}
					 //if (type == 1){
				
				//out.println(username);
				if(Uid == username && checkPass.equals(password) && type == 2 ){
					
				out.println("Welcome Professor " + profName );
					 
			String str = "select s.name, c.cid,r.rid,c.cname,r.grade  from students s, courses c, register r, professor p where s.sid=r.sid and r.cid =c.cid and r.pid = p.pid and p.pid =  " + username;
					// }
					 
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);
		%>
			
		<!--  Make an HTML table to show the results in: -->
	<table>
		<tr>    
			<td>Name</td>
			<td>
				Course ID
			</td>
			<td>
			Grade
			</td>
		
		</tr>
			<%
			//parse out the results
			while (result.next()) { %>
				<tr>    
					<td><%= result.getString("name") %></td>
					
					<td>
						<%= result.getString("cid")%>
					</td>
					
					<td>
						<%= result.getString("grade")%>
					</td>
					<form method="post" action="updategrade.jsp">
					<td>
						<input type="text" name="grade">
					</td>
					<td>
						<input type="submit" value="Update Grade">
						<input type="hidden" name="rid" value="<%= result.getString("RID")%>">
						
					</td>
					</form>
					
				</tr>
				

			<% }
			
			//close the connection.
			db.closeConnection(con);
			%>
		</table>
		
		
			<%} else {
				out.println("username or password not valid");
			}%>

			
		<%} catch (Exception e) {
			out.print(e);
		}%>	
		
	<br>
	<form method="post" action="logout.jsp">
		<input type="submit" value="Logout" />
	</form>


	</body>
</html>