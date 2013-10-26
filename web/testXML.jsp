<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String filePath = ("users.xml"); %>
<jsp:useBean id="userApp" class="wsd.assignment.user.UserApplication" scope="application">
    <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<% userApp.makeXML(); 
    out.print(filePath);
%>
You have been logged out of M Squared. Click <a href="index.jsp">here</a> to return to the main page
</body>
</html>