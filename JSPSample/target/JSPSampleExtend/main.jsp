<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import = "java.util.*" %>
<%@ taglib prefix = "ex" uri = "WEB-INF/custom.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
   <head>
      <title>Reading Checkbox Data</title>
   </head>
   
   <body>
      <h1>Reading Checkbox Data</h1>
      
      <ul>
         <li><p><b>Maths Flag:</b>
            <%= request.getParameter("maths")%>
         </p></li>
         <li><p><b>Physics Flag:</b>
            <%= request.getParameter("physics")%>
         </p></li>
         <li><p><b>Chemistry Flag:</b>
            <%= request.getParameter("chemistry")%>
         </p></li>
      </ul>
     
      <c:set value="JSTL Core Tags Example" var="pageTitle"/>
       <c:out value="${pageTitle}"/>
       <c:out value="123"/>
    <ex:Hello/>
    <br>
    <c:set value="<%= Calendar.getInstance().get(Calendar.SECOND)%>" var="seconds"/>
<c:choose>
    <c:when test="${seconds le 30 }">
        <c:out value="${seconds} is less than 30"/>
    </c:when>
    <c:when test="${seconds eq 30 }">
        <c:out value="${seconds} is equal to 30"/>
    </c:when>
    <c:otherwise>
        <c:out value="${seconds} is greater than 30"/>
    </c:otherwise>
</c:choose>
    
    
   </body>
</html>