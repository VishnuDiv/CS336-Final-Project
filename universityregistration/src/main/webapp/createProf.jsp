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
	String userid = request.getParameter("pID");    
	String pass = request.getParameter("Password");
	String name = request.getParameter("Name");
	String phone = request.getParameter("Phone");
	String office = request.getParameter("Office");
	String type = "2";
	
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	Statement stmt1 = con.createStatement();
	ResultSet rs;
	rs = stmt.executeQuery("select * from Login where id='" + userid + "'");
	if (rs.next()) {
		out.println("Professor ID exists, please try another <a href='addProfessor.jsp'>try again</a>");
	} else {
		int x = stmt.executeUpdate("insert into Professor (pID, pname, Phone, Office) values('" +userid+ "', '" +name+"', '" +phone+"', '" +office+ "')");
		int y = stmt1.executeUpdate("insert into Login (id, acctype, pass) values('" +userid+ "', '" +type+"', '" +pass+"')");
		session.setAttribute("pID", userid); 
		response.sendRedirect("adminSuccess.jsp");
	}
    	
%>

</body>
</html>