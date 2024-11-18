package app.servlets;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * RoleTag
 */
public class RoleTag extends TagSupport {
// Three attributes:
	private String name;
	private String range;
	private String description;

// ... and their setter methods:
	public void setName(String nameFromJSPTag) {
		name = nameFromJSPTag;
	}

	public void setRange(String rangeFromJSPTag) {
		range = rangeFromJSPTag;
	}

	public void setDescription(String descriptionFromJSPTag) {
		description = descriptionFromJSPTag;
	}

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<TR>");
			out.println("<TD>" + name + "</TD>");
			out.println("<TD>" + range + "</TD>");
			out.println("<TD>" + description + "</TD>");
			out.println("</TR>");
		} catch (IOException e) {
			throw new JspException(e.getMessage());
		}
		return SKIP_BODY;
	}
}