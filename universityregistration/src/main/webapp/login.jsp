<!DOCTYPE html>
<html>
   <head>
      <title>Login Form</title>
   </head>
   <body>
     <form action="displayLoginDetails.jsp" method="POST">
       University ID Number: <input type="text" name="username"/> <br/>
       Password:<input type="password" name="password"/> <br/>
       
       Account: <select name="Account" size=1>
				<option value="1">Student</option>
				<option value="2">Professor</option>
				<option value="3">Admin</option>
			</select>&nbsp;<br> 
     
       <input type="submit" value="Submit"/>
     </form>
   </body>
</html>