<%@ page session="false" %>
<%@ page import="java.io.*,java.text.*,java.util.*" %>
<%-- Prints a conversion table of miles per gallon
to kilometers per liter --%>
<%!
private static final DecimalFormat FMT
= new DecimalFormat("#0.00");
%>
<HTML>
<HEAD>
<TITLE>Fuel Efficiency Conversion Chart</TITLE>
</HEAD>
<BODY>
<H3>ENV VARIABLE TALBE</H3>
<TABLE BORDER=1 CELLPADDING=3 CELLSPACING=0>
<%!
private static final String normalize(String s)
{
 if (s != null) {

StringBuffer sb = new StringBuffer();
for (int i = 0; i < s.length(); i++) {
char c = s.charAt(i);
sb.append(c);
if (c == ';')
sb.append("<BR>");
}
return sb.toString();}
 return null;
}
%>
<%
String[] propNames = {
"java.class.path",
"java.class.version",
"java.ext.dirs",
"java.library.path",
};
for (int i = 0; i < propNames.length; i++) {
String name = propNames[i];
String value = System.getProperty(name);
%>
<TR>
<TD ALIGN=LEFT VALIGN=TOP><%= name %></TD>
<TD ALIGN=LEFT VALIGN=TOP><%= normalize(value) %></TD>
</TR>
<%
}
%>
</BODY>
</HTML>