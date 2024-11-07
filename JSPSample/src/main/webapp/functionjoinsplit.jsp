<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@page import="java.util.*"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
   <head>
      <title>Using JSTL Functions</title>
   </head>

   <body>
      <c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "${fn:split(string1, ' ')}" />
      <c:set var = "string3" value = "${fn:join(string2, '-')}" />
      <p>Final String : ${string3}</p>
   
   </body>
</html>