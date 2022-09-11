<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Join a Class</title>
</head>
<body>
			
			<%
	try {
		String userid = (String)session.getAttribute("user"); 
		String cid = request.getParameter("courses");
		String secnum = request.getParameter("secnum"); 
		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();
		String str = "select tt.pid from(select s.cid,s.section,s.stime,s.sday,p.pname,s.pid FROM semester s, professor p WHERE s.pid = p.pid and cid in(select cid from (select s.cid,(select count(*) from( select prereq from prereqs p where p.cid = s.cid) as t1 where t1.prereq not in(select cid from taken where sid =" +userid +"))as newc from semester s having newc=0)cid)) as tt where tt.cid =" + cid + " and tt.section=" +secnum+";";
		ResultSet result = stmt.executeQuery(str);
		result.next();
		String pid = result.getString("pid");
		//Make an insert statement for the Sells table:
		String insert = "INSERT INTO register(grade, sid, pid,section,cid)"
				+ "VALUES (?, ?, ?, ? ,?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);
		int cid1 = Integer.parseInt(cid);
		int pid1 = Integer.parseInt(pid);
		int section1= Integer.parseInt(secnum);
		int sid1 = Integer.parseInt(userid);
		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setInt(1, 0);
		ps.setInt(2, sid1);
		ps.setInt(3, pid1);
		ps.setInt(4, section1);
		ps.setInt(5, cid1);
		//Run the query against the DB
		ps.executeUpdate();

		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();

		out.print("Joined Class!");
		
		
		
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("You Cannot Join this Class!");
		
	}
			
			
%>

	<form method="post" action="viewclasses.jsp">
	<input type="submit" value="go back" />
	</form>
	
			
		
		



</body>
</html>