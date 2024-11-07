<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
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
    <c:set value="<%= Calendar.getInstance().get(Calendar.DAY_OF_MONTH)%>" var="dayint"/>
    
    
<c:choose>
    <c:when test="${dayint le 25 }">
        <c:out value="${dayint} is less than 30"/>
    </c:when>
    <c:when test="${dayint eq 25 }">
        <c:out value="${dayint} on the lookout"/>
    </c:when>
    <c:otherwise>
        <c:out value="${dayint} howdy cowdy waiting for ting ting"/>
    </c:otherwise>
</c:choose>
<c:remove var="pageTitle"/>
    <br>
     <c:out value="${pageTitle} 123"/>
     
 <%--  <c:forEach> tag is a commonly used tag because it iterates over a collection of objects. --%>
      <c:forEach var = "i" begin = "1" end = "5">
         Item <c:out value = "${i}"/><p>
      </c:forEach>
       <body>
    <%--   <c:redirect url = "http://www.photofuntoos.com"/> --%>
   </body>
   </body>
</html>