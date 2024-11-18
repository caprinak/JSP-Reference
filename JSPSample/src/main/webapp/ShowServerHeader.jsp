<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="diag" uri="/WEB-INF/custom.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<BODY>
<H3>Custom Tag with Attributes</H3>
Request methods supported by this instance of
	<%-- <diag:getWebServer/> --%>
are
<H4><diag:getWebServerHeader name="allow"/></H4>
</BODY>
</html>