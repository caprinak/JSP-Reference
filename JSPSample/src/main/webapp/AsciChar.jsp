<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H3>ASCII Table</H3>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
<%
StringBuffer sb = new StringBuffer();
sb.append("<TR>");
sb.append("<TH WIDTH=40>&nbsp;</TH>");
for (int col = 0; col < 16; col++) {
sb.append("<TH>");
sb.append(Integer.toHexString(col));
sb.append("</TH>");
}
sb.append("</TR>");
for (int row = 0; row < 16; row++) {
sb.append("<TR>");
sb.append("<TH>");
sb.append(Integer.toHexString(row));
sb.append("</TH>");
for (int col = 0; col < 16; col++) {
 char c = (char)(row * 16 + col);
/* char c = (char)(40) = ! */
// char c = (char)(97) = a;
sb.append("<TD WIDTH=32 ALIGN=CENTER>");
sb.append(c);
sb.append("</TD>");
}
sb.append("</TR>");
}
out.println(sb);
%>
</TABLE>
</body>
</html>