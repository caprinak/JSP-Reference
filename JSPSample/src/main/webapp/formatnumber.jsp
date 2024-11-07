<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@page import="java.util.*"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%-- <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %> --%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>



1	
0 Represents a digit.

2	
E Represents in exponential form.

3	
# Represents a digit; displays 0 as absent.

4	
. Serves as a placeholder for a decimal separator.

5	
, Serves as a placeholder for a grouping separator.

6	
; Separates formats.

7	
- Used as the default negative prefix.

8	
% Multiplies by 100 and displays as a percentage.

9	
? Multiplies by 1000 and displays as per mille.

10	
¤ Represents the currency sign; replaced by actional currency symbol.

11	
X Indicates that any other characters can be used in the prefix or suffix.

12	
' Used to quote special characters in a prefix or suffix.


<html>
   <head>
      <title>JSTL fmt:formatNumber Tag</title>
   </head>

   <body>
      <h3>Number Format:</h3>
      <c:set var = "balance" value = "120000.2309" />
         
      <p>Formatted Number (1): <fmt:formatNumber value = "${balance}" 
         type = "currency"/></p>
         
      <p>Formatted Number (2): <fmt:formatNumber type = "number" 
         maxIntegerDigits = "3" value = "${balance}" /></p>
         
      <p>Formatted Number (3): <fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "${balance}" /></p>
         
      <p>Formatted Number (4): <fmt:formatNumber type = "number" 
         groupingUsed = "false" value = "${balance}" /></p>
         
      <p>Formatted Number (5): <fmt:formatNumber type = "percent" 
         maxIntegerDigits="3" value = "${balance}" /></p>
         
      <p>Formatted Number (6): <fmt:formatNumber type = "percent" 
         minFractionDigits = "10" value = "${balance}" /></p>
         
      <p>Formatted Number (7): <fmt:formatNumber type = "percent" 
         maxIntegerDigits = "3" value = "${balance}" /></p>
         
      <p>Formatted Number (8): <fmt:formatNumber type = "number" 
         pattern = "###.###E0" value = "${balance}" /></p>
         
      <p>Currency in USA :
         <fmt:setLocale value = "de_DE"/>
         <fmt:formatNumber value = "${balance}" type = "currency"/>
      </p>
   
   </body>
</html>