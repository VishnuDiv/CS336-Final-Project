<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %> 
<% 
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	Statement stmt1= con.createStatement();
	Statement stmt2= con.createStatement();
	Statement stmt3= con.createStatement();
	Statement stmt4= con.createStatement();
	Statement stmt5= con.createStatement();
	ResultSet rs1;
	ResultSet rs2;
	ResultSet rs3;
	ResultSet rs4;
	ResultSet rs5;
	ResultSet rs6;
	String n = null;
	
	rs1 = stmt.executeQuery("select cID from enrolledIn where sID= '"+session.getAttribute("sID")+"'"); 
	HashSet<String> set = new HashSet<String>();
	HashSet<String> timing = new HashSet<String>();
	while(rs1.next())
	{
		rs3 = stmt2.executeQuery("Select Name from Courses where cID= '"+rs1.getString(1)+"'");
		while(rs3.next())
		{
			set.add(rs3.getString(1));
		}
	}
	rs5 = stmt4.executeQuery("SELECT * FROM Courses");
	while(rs5.next())
	{
		rs6 = stmt5.executeQuery("Select Timing from sections where cID= '"+rs5.getString(2)+"'");
		while(rs6.next())
			timing.add(rs6.getString(1));
	}
	while(rs5.next())
	{
		if(rs5.getString(5)==null)
		{
			rs6 = stmt5.executeQuery("Select * from sections where cID= '"+rs5.getString(2)+"'");
			while(rs6.next())
			{
				if(!timing.contains(rs6.getString(2)))
				{
					out.println("Course ID: "+rs5.getString(2));
					out.println(" Section Number: "+rs6.getString(3));
					out.println(" Timing: "+rs6.getString(2));
					out.println(" Professor: "+rs6.getString(4));
				}
			}
		}
		out.println("<br/>");
	}
	for(String course : set)
	{
		rs2 = stmt1.executeQuery("SELECT cID FROM Courses Where preReqs= '"+course+"'");
		while(rs2.next())
		{
			rs4 = stmt3.executeQuery("Select * from sections where cID= '"+rs2.getString(1)+"'");
			while(rs4.next())
			{
				if(!timing.contains(rs4.getString(2)))
				{
					out.println("Course ID: "+rs2.getString(1));
					out.println(" Section Number: "+rs4.getString(3));
					out.println(" Timing: "+rs4.getString(2));
					out.println(" Professor: "+rs4.getString(4));
				}
			}
		}
		out.println("<br/>");
	}
%>
</body>
</html>