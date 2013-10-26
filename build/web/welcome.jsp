<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page import="wsd.assignment.user.*"%>
<%@page import="wsd.assignment.rest.*"%>
<title>Welcome!</title>
</head>
<body bgcolor="<%=request.getParameter("favcol")%>">
	<%
		String filePath = application.getRealPath("WEB-INF/users.xml");
	%>
	<jsp:useBean id="userApp" class="wsd.assignment.user.UserApplication"
		scope="application">
		<jsp:setProperty name="userApp" property="filePath"
			value="<%=filePath%>" />
	</jsp:useBean>

	<%
		String check = request.getParameter("tos");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String colour = request.getParameter("favcol");

		if (check != null) {
			wsd.assignment.user.User user = new wsd.assignment.user.User(email, name, password,
					gender, colour);
			session.setAttribute("user", user);

			userApp.getUsers().addUser(user);
			response.sendRedirect("index.jsp");
			//out.print("<p>Welcome," + name + "</p>");
			//out.print("<p>Your Email is" + email + "</p>");
			//out.print("<p>Your password is " + password + "</p>");
			//out.print("<p>Your gender is " + gender + "</p>");
			//out.print("<p>Your favourite colour is," + colour + "</p>");
			//out.print("<p>Click <a href='index.jsp'>here</a> to proceed to the main page.</p>");
		} else {
			out.print("Sorry, you must agree to the Terms of Serivce</br>");
			out.print("Click <a href='register.jsp'>here</a> to go back");
		}
	%>
</body>
</html>