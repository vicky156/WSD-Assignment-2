<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Action</title>
<%@page import="wsd.assignment.user.*"%>
</head>
<body>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="userApp" class="wsd.assignment.user.UserApplication" scope="application">
    <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

Users users = userApp.getUsers();

User user = users.login(email, password);

if (user != null){
	session.setAttribute("user", user);
	response.sendRedirect("index.jsp");
	%>
	
	//<p>
	//Login successful. Click <a href="index.jsp">here</a> to return to the
	//main page.</p>
	
	<% } else { %>
	
	<p>
	Password incorrect. Click <a href="login.jsp">here</a> to try
	again.</p>
	
	<% } %>
</body>
</html>