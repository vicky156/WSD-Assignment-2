<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="generator" content="HTML Tidy for Linux (vers 25 March 2009), see www.w3.org">
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<title>Register</title>
</head>
<body>
<h2>Register</h2>
<form name="register" action="welcome.jsp" method="post" id="register">
<table border="0">
<tr>
<td>Full Name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="Male">Male<br>
<input type="radio" name="gender" value="Female">Female<br></td>
</tr>
<tr>
<td>Favourite Colour</td>
<td><select name="favcol">
<option value="yellow">Yellow</option>
<option value="red">Red</option>
<option value="green">Green</option>
</select></td>
</tr>
<tr>
<td>Agree to TOS</td>
<td><input type="checkbox" name="tos" value="tos"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Register"></td>
</tr>
</table>
</form>
</body>
</html>