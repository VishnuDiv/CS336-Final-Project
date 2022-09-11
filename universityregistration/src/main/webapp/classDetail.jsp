<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page</title>
</head>
<body>
<form action="getClasses.jsp" method="POST">
       Semester: <input type="text" name="Semester"/> <br/>
       Course ID: <input type="text" name="Course"/> <br/>
       Section: <input type="text" name="Section"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</body>
</html>