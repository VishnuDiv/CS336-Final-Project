<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

    String userid = request.getParameter("username");   
    String pwd = request.getParameter("password");
    String entity = request.getParameter("Account");
    
    Class.forName("com.mysql.jdbc.Driver");
    ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();
    
    //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuniversity","root", "Pappu2003");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where id='" + userid + "' and pass='" + pwd + "' and acctype='" + entity + "'");

    if (rs.next() && entity.equals("1")) {
        session.setAttribute("user", userid); // the username will be stored in the session
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("studenthome.jsp");
    } 
    else{
    	rs = st.executeQuery("select * from login where id='" + userid + "' and pass='" + pwd + "' and acctype='" + entity + "'");
    }
    if (rs.next() && entity.equals("2"))
    {
    	session.setAttribute("user", userid);
    	session.setAttribute("pass", pwd);
    	response.sendRedirect("show.jsp");
    }
    else{
    	rs = st.executeQuery("select * from login where id='" + userid + "' and pass='" + pwd + "' and acctype='" + entity + "'");
    }
    if (rs.next() && entity.equals("3")){response.sendRedirect("adminSuccess.jsp");}
    else {
        out.println("Invalid Login Details <a href='login.jsp'>try again</a>");
    }
%>