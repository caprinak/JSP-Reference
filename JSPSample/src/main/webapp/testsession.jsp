<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page errorPage="ErrorPage.jsp" import="java.io.*,java.util.*"%>

<html>
<head>
<title>Set session</title>
</head>




<body>
	

	<%
	
	String name = (String) session.getAttribute("user");
	out.print("Hello " + name);
	%>
</body>
</html>