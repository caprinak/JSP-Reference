<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Tag Example</title>
</head>

<body>

	<c:catch var="exceptionThrown">
		<%
		int x = Integer.valueOf("a");
		%>
	</c:catch>
	<c:if test = "${exceptionThrown != null}">
    <p>The exception is : ${exceptionThrown} <br />
      There is an exception: ${exceptionThrown.message}
    </p>
</c:if>
</body>
</html>