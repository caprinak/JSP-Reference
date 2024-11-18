package app.servlets;

import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;
import java.net.*;
/**
* Handler for the "getWebServerHeader" tag
*/
public class GetWebServerHeaderTag extends TagSupport
{
private String name;
/**
* Sets the name property. A call to this method
* is automatically generated by the JSP container
* when a tag with the name attribute is used in
* a JSP page.
*/
public void setName(String name)
{
this.name = name;
}
public int doStartTag() throws JspException
{
try {
// Get the request object from the page context
HttpServletRequest request =
(HttpServletRequest) pageContext.getRequest();
// Request information from web server
URL url = new URL("http",
request.getServerName(),
request.getServerPort(),
"/");
URLConnection con = url.openConnection();
((HttpURLConnection) con).setRequestMethod("OPTIONS");
// Extract the requested header
String header = con.getHeaderField(name);
// Write it to the output stream
JspWriter out = pageContext.getOut();
out.print(request.getServletContext());
out.print("<br>");
out.print(header);
}
catch (IOException e) {
throw new JspException(e.getMessage());
}
return SKIP_BODY;
}
}