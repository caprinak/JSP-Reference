<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Tag Example</title>
</head>

<body>

	<c:set var="salary" scope="session" value="${2000*2}" />
	<p>
		Your salary is :
		<c:out value="${salary}" />
	</p>
	<c:choose>

		<c:when test="${salary <= 0}">
            Salary is very low to survive.
         </c:when>

		<c:when test="${salary > 1000}">
            Salary is very good.
         </c:when>

		<c:otherwise>
            No comment sir...
         </c:otherwise>
	</c:choose>


	<c:set var="salaryy" scope="session" value="${2000 * 2}" />
	<p>
		Your salary is:
		<c:out value="${salary}" />
	</p>
	<c:choose>
		<c:when test="${salaryy <= 0}">
		Salary is very low to survive.
		</c:when>
		<c:when test="${salaryy > 1000}">
		Salary is very good.
		</c:when>
		<c:otherwise>
		No comment sir...
		</c:otherwise>
	</c:choose>
</body>
</html>