<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="createSection.jsp" method="POST">
       Enter A Course ID: <input type="text" name="cID"/> <br/>
       Enter Day: <input type="text" name="Day"/> <br/>
       Enter Timing: <input type="text" name="Timing"/> <br/>
       Enter A Section Number: <input type="text" name="SectionNumber"/> <br/>
       Enter Professor ID: <input type="text" name="pID"/> <br/>
       Enter Semester: <input type="text" name="Semester"/> <br/>
       <input type="submit" value="Submit"/>
     </form>
</body>
</html>