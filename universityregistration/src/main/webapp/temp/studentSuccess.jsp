<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 Welcome <%=session.getAttribute("sID") %> 
 <br/>
		<a href="showCourses.jsp" ><button>See Your Courses</button></a>
		<a href="registerCourses.jsp" ><button>See Available Courses</button></a>
		<form action="enrollInClass.jsp" method="POST">
		Enroll In Course:
		<input type="text" name="cID" placeholder="Enter Course ID"> 
		<input type="text" name="SectionNumber" placeholder="Enter Section Number"> 
		<form action="enrollInClass.jsp">
			<input type="submit" value="Add Course">
		</form>
</body>
</html>