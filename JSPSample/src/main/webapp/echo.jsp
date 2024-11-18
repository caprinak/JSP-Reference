<%@ page import="java.util.*"%>
<HTML>
<HEAD>
<TITLE>Echo</TITLE>
<!-- Servlet code generated is as follows

•  String _jspx_qStr = "";: Initializes an empty query string.

•  out.flush();: Flushes the output stream to ensure all previous content is sent to the client before including the CSS file.

•  pageContext.include("style.css" + _jspx_qStr);: Includes the style.css file into the current JSP page, allowing the styles to be applied.

This approach is useful for dynamically including resources and ensuring that the page is styled correctly.
 -->
<STYLE>
< jsp :include  page =" style .css "   flush =" true "/ >
</STYLE>
</HEAD>
<BODY>
	<H3>HTTP Request Headers Received</H3>
	<TABLE BORDER="1" CELLPADDING="4" CELLSPACING="0">
		<%
		Enumeration eNames = request.getHeaderNames();
		while (eNames.hasMoreElements()) {
			String name = (String) eNames.nextElement();
			String value = normalize(request.getHeader(name));
		%>
		<TR>
			<TD><%=name%></TD>
			<TD><%=value%></TD>
		</TR>
		<%
}
%>
	</TABLE>
	The Java virtual machine vendor is
	<em><%= System.getProperty("java.vm.vendor") %></em>
</BODY>
</HTML>
<%!private String normalize(String value) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < value.length(); i++) {
			char c = value.charAt(i);
			sb.append(c);
			if (c == ';')
				sb.append("<BR>");
		}
		return sb.toString();
	}%>