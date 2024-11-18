<%@ page import="java.io.*,java.util.*" %>
<%!
/**
* Inner class for passing parameters between methods
An inner class can be useful as a data structure that holds implict and other variables.
*/
class Parameters {
JspWriter out;
HttpSession session;
String url;
}
public void showSessionID(Parameters parms)
throws IOException
{
JspWriter out = parms.out;
HttpSession session = parms.session;
String url = parms.url;
Date created = new Date(session.getCreationTime());
out.println("The session was created at " + created
+ "<P>");
out.println("The url parameter was " + url);
}
%>
<%
Parameters parms = new Parameters();
parms.out = out;
parms.session = session;
parms.url = request.getParameter("url");
showSessionID(parms);
%>

<!-- For Testing call: http://localhost:8080/JSPSample/innerclassdemo.jsp?url=aba -->