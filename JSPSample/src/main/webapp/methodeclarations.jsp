<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page errorPage="ErrorPage.jsp" import="java.io.*,java.util.*"%>

<html>
<head>
<title>Set cookie</title>
</head>

<%@ page import="java.io.*,java.util.*" %>

<!--Unlike scriptlets and expressions, declarations have no access to the implicit objects.  The showSessionID() method is able to extract the JspWriter and HttpSession
objects from the page context and use them to write to the current output stream. -->
<%!
public void showSessionID(PageContext pc)
throws IOException
{
JspWriter out = pc.getOut();
HttpSession session = pc.getSession();
Date created = new Date(session.getCreationTime());
out.println("The session was created at " + created);
}
%>
<%
showSessionID(pageContext);
%>

<%-- Define a method to print a table --%>
<%!private static void printTable(Writer writer, Map map, String title) {
		// Get the output stream
		PrintWriter out = new PrintWriter(writer);
		// Write the header lines
		out.println("<TABLE BORDER=1 CELLPADDING=3>");
		out.println("<TR><TH COLSPAN=2>" + title + "</TH></TR>");
		// Write the table rows
		Iterator imap = map.entrySet().iterator();
		while (imap.hasNext()) {
			Map.Entry entry = (Map.Entry) imap.next();
			String key = (String) entry.getKey();
			String value = (String) entry.getValue();
			out.println("<TR>");
			out.println("<TD>" + key + "</TD>");
			out.println("<TD>" + value + "</TD>");
			out.println("</TR>");
		}
		// Write the footer lines
		out.println("</TABLE>");
		out.println("<P>");
	}%>

<body>
	<%
	// Create cookies for first and last names.      
	Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
	Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
	String fname = firstName.getValue() + lastName.getValue();
	session.setAttribute("user", fname);
	// Set expiry date after 24 Hrs for both the cookies.
	firstName.setMaxAge(60 * 60 * 24);
	lastName.setMaxAge(60 * 60 * 24);

	// Add both the cookies in the response header.
	response.addCookie(firstName);
	response.addCookie(lastName);
	%>
	<center>
		<h1>Setting Cookies</h1>
	</center>
	<ul>
		<li><p>
				<b>First Name:</b>
				<%=request.getParameter("first_name")%>
			</p></li>
		<li><p>
				<b>Last Name:</b>
				<%=request.getParameter("last_name")%>
			</p></li>
	</ul>
	<%
	Enumeration enames;
	Map map;
	String title;
	// Print the request headers
	map = new TreeMap();
	enames = request.getHeaderNames();
	while (enames.hasMoreElements()) {
		String name = (String) enames.nextElement();
		String value = request.getHeader(name);
		map.put(name, value);
	}
	printTable(out, map, "Request Headers");
	// Print the session attributes
	map = new TreeMap();
	enames = session.getAttributeNames();
	while (enames.hasMoreElements()) {
		String name = (String) enames.nextElement();
		String value = "" + session.getAttribute(name);
		map.put(name, value);
	}
	printTable(out, map, "Session Attributes");
	%>
	<%
	String name = (String) session.getAttribute("user");
	out.print("Hello " + name);
	%>
</body>
</html>