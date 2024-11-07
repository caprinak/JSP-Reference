<%@ page import="java.text.*" %>
<TABLE BORDER=0 CELLPADDING=3>
<TR>
<TH>Degrees<BR>Fahrenheit</TH>
<TH>Degrees<BR>Celsius</TH>
</TR>
<%
NumberFormat fmt = new DecimalFormat("###.000");
for (int f = 32; f <= 212; f += 20) {
double c = ((f - 32) * 5) / 9.0;
String cs = fmt.format(c);
%>
<TR>
<TD ALIGN="RIGHT"><%= f %></TD>
<TD ALIGN="RIGHT"><%= cs %></TD>
</TR>
<%
}
%>
</TABLE>