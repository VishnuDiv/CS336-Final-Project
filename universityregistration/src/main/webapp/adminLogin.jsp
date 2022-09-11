<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Administrator Login Page</title>
</head>
<body>
<form action="CheckAdminLogin.jsp" method="POST">
       Admin ID: <input type="text" name="Username"/> <br/>
       Password: <input type="password" name="Password"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</body>
</html>