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
	ResultSet rs1;
	ResultSet rs2;
	ResultSet rs3;
	String cID = request.getParameter("cID") + "";
	String SectionNumber = request.getParameter("SectionNumber") +"";
		
	rs1 = stmt.executeQuery("select sID from enrolledIn where cID= '"+cID+"' and SectionNumber= '"+SectionNumber+"'"); 
	 
	  while(rs1.next()){
	    	rs2 = stmt1.executeQuery("select Name from Students where sID= '"+rs1.getString(1)+"'");
	    	while(rs2.next())
	    		out.print("Name: "+rs2.getString(1)+" Grade: ");
	    	rs3 = stmt1.executeQuery("select Grade from enrolledIn where sID= '"+rs1.getString(1)+"' and cID= '"+cID+"' and SectionNumber= '"+SectionNumber+"'");
	    	while(rs3.next())
	    		out.println(rs3.getString(1));
	    	out.println("<br>");
	}%>
</body>
</html>