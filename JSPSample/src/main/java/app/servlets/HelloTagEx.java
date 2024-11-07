package app.servlets;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class HelloTagEx extends SimpleTagSupport {
	 StringWriter sw = new StringWriter();
	   public void doTag()
	   
	   throws JspException, IOException {
	      getJspBody().invoke(sw);
	      getJspContext().getOut().println(sw.toString());
	   }
}