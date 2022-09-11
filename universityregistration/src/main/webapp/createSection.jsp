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
	String courseID = request.getParameter("cID"); 
	String Timing = request.getParameter("Timing");
	String SectionNumber = request.getParameter("SectionNumber"); 
	String Professor = request.getParameter("pID");
	String day = request.getParameter("Day");
	String sem = request.getParameter("Semester");
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
    ResultSet rs;
    rs = stmt.executeQuery("select * from Semester where cID='" + courseID + "' and pID='" + Professor + "' and sem='" + sem + "'");
    if (rs.next()) {
    	out.println("Section exists, please try another <a href='addSection.jsp'>try again</a>");
    } else {
    	int x = stmt.executeUpdate("insert into Semester (Section, stime, sday, cid, pid, sem)"+
    	" values('" +SectionNumber+ "', '" +Timing+ "', '" +day+ "', '" +courseID+ "', '" +Professor+  "', '" +sem+ "')");
    	response.sendRedirect("adminSuccess.jsp");
    }
    	
%>

</body>
</html>