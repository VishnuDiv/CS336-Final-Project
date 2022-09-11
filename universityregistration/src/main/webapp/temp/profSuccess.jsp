<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 Welcome <%=session.getAttribute("pID") %> 
<form action="ClassRoster.jsp" method="POST">
	Retrieve Class Roster:
	<input type="text" name="cID" placeholder="Enter Course ID"> 
	<input type="text" name="SectionNumber" placeholder="Enter Section"> 
	<form action="ClassRoster.jsp">
		<input type="submit" value="Retrieve">
	</form>	
<form action="changeGrade.jsp" method="POST">
	Change Students Grade:
	<input type="text" name="cID" placeholder="Enter Course ID"> 
	<input type="text" name="sID" placeholder="Enter Student ID"> 
	<input type="text" name="SectionNumber" placeholder="Enter Section Number"> 
	<input type="text" name="Grade" placeholder="Enter New Grade"> 
	<form action="changeGrade.jsp">
		<input type="submit" value="Change">
	</form>
</form>	
</body>
</html>