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
	ResultSet rs1;
	ResultSet rs2;
	ResultSet rs3;
	String cID = request.getParameter("cID") + "";
	String SectionNumber = request.getParameter("SectionNumber") +"";
	String sID = String.valueOf(session.getAttribute("sID"));
	String n  = null;
		
	rs1 = stmt.executeQuery("select preReqs from courses where cID= '"+cID+"'"); 
	rs2 = stmt1.executeQuery("select cID from enrolledIn where sID= '"+sID+"'"); 
	
	HashSet<String> prereqs = new HashSet<String>();
	while(rs2.next())
	{
		rs3 = stmt2.executeQuery("select Name from Courses where cID='" +rs2.getString(1)+ "'");
		while(rs3.next())
			prereqs.add(rs3.getString(1));
	}
		while(rs1.next())
		{
	    	if(rs1.getString(1) == null || prereqs.contains(rs1.getString(1)))
	    	{
	        	int x = stmt.executeUpdate("insert into enrolledIn (sID, SectionNumber, cID, Grade)"+
	        	" values('" +sID+ "', '" +SectionNumber+ "', '" +cID+ "', '" +""+ "')");
	        	break;
	    	}
		}
    response.sendRedirect("studentSuccess.jsp");
%>
</body>
</html>