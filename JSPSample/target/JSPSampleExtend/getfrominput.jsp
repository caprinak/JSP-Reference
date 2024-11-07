<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Using GET Parameter function to Read Form Data from a page</title>
</head>
<body>
<center>
<h1>getParameter() function with POST method to pass data from one page to another.</h1>
<ul>
<li><p><b>Parameter 1:</b>
<%= request.getParameter("p1")%>
</p></li>
<li><p><b>Parameter 2:</b>
<%= request.getParameter("p2")%>
</p></li>
</ul>
</body>
</html>