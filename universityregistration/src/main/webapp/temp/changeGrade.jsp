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
	String cID = request.getParameter("cID") + "";
	String SectionNumber = request.getParameter("SectionNumber") +"";
	String sID = request.getParameter("sID") + "";
	String Grade = request.getParameter("Grade") +"";
		
	int change = stmt.executeUpdate("update enrolledIn set Grade= '"+Grade+"' Where SectionNumber= '"+SectionNumber+"' and sID= '"+sID+"' and cID= '"+cID+"'"); 
	out.println("Change Complete");
	%>
</body>
</html>