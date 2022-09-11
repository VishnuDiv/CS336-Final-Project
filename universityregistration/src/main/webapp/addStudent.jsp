<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="createStudent.jsp" method="POST">
       Enter A Student ID: <input type="text" name="sID"/> <br/>
       Enter A Password: <input type="password" name="Password"/> <br/>
       Enter Name: <input type="text" name="Name"/> <br/>
       Enter Phone Number: <input type="text" name="Phone"/> <br/>
       Enter Birthday: <input type="text" name="BDay"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</body>
</html>