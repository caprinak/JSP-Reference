<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Tag Example</title>
</head>

<body>

	<c:import var = "data" url = "http://www.example.com"/>
	<c:out value = "${data}"/>
	
	<c:url value = "readallparams.jsp" var = "myURL">
   <c:param name = "trackingId" value = "1234"/>
   <c:param name = "reportType" value = "summary"/>
</c:url>
<br>
<c:import url = "${myURL}" var = "data1"/>
	<c:out value = "${data1}"/>
</body>
</html>