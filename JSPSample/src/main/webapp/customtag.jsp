<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "ex" uri = "WEB-INF/custom.tld"%>
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
 <ex:HelloEx>
   This is message body
</ex:HelloEx>
   </body>
</html>