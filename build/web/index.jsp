<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<%@page import="wsd.assignment.user.*"%>
<%@page import="wsd.assignment.rest.*"%>
</head>

<body>
<h1>Welcome to M Squared</h1>
<%
	User user = (User)session.getAttribute("user"); 

if (user != null){
	out.println("<table border = '1'>");
	out.println("<tr>");
	out.println("<td>");
	out.println("Your Are Logged in as" + user.getName() + "&lt" + user.getEmail() + "&gt");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>");
	out.println("<a href='login.jsp'>login</a>");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>");
	out.println("<a href='logout.jsp'>logout</a>");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>");
	out.println("<a href='edit_user.jsp'>My Account</a>");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>");
	out.println("<a href='users.jsp'>Users</a>");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
}
else{
	out.println("<table border = '1'>");
	out.println("<tr>");
	out.println("<td>");
	out.println("You are not logged in");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>");
	out.println("<a href='register.jsp'>register</a>");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");;
}
%>
</body>
</html>