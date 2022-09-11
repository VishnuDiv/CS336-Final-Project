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
	String section = request.getParameter("Section"); 
	String course = request.getParameter("Course");
	String semester = request.getParameter("Semester"); 

	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	Statement stmt1 = con.createStatement();
	Statement stmt2 = con.createStatement();
    ResultSet rs;
    ResultSet rs1;
    ResultSet rs2;
    rs = stmt.executeQuery("select * from Semester where cID='" + course + "' and sem='" +semester+ "' and section= '" +section+"'");
    if (rs.next()) {
    	rs1 = stmt1.executeQuery("select sid from Register where section= '" +section+"' and cid= '" +course+ "'");
    	while(rs1.next())
    	{
    		rs2 = stmt2.executeQuery("select name from Students where sid= '"+rs1.getString(1)+"'");
    		while(rs2.next())
    			out.println("Student Name: " +rs2.getString(1)+"<br/>");
    	}
    }
    	
%>

</body>
</html>