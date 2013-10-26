<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="wsd.assignment.user.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>M Squared - My Account</title>
</head>
<body>
<H1>My Account</H1>
<%User user = (User)session.getAttribute("user");%>
<form>
Email: <input type="text" name="email" value="<%out.print(user.getEmail()); %>"><br>
Full name: <input type="text" name="name" value="<%out.print(user.getName()); %>"><br>
Password: <input type="text" name="password" value="<%out.print(user.getPassword()); %>"><br>
Gender: <input type="radio" name="gender" value="Male" checked>Male<br>
<input type="radio" name="gender" value="Female">Female<br>
Favourite Colour: <select name="favcol">
<option value="yellow" selected="Selected">Yellow</option>
<option value="red">Red</option>
<option value="green">Green</option>
<option value="orange">Green</option>
</select>
</form> 
</body>
</html>