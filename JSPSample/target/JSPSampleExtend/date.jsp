<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.*"%>   
<!DOCTYPE html>
<body>
<%!
Date theDate = new Date(); // Corrected the unwanted space in the declaration
Date getDate() {
    System.out.println("In getDate() method");
    return theDate;
}
%>
Hello! The time is now <%=getDate()%>
</body>
</html>