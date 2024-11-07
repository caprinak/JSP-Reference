<%@ page language="java"  contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="app.model.EmployeeBean" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>UseBean Example</title>
</head>

<body>
    <h2>UseBean Example</h2>
    <jsp:useBean id="employee" class="app.model.EmployeeBean" />
    <jsp:setProperty name="employee" property="name" value="Mike Johnson"/>
    <jsp:setProperty name="employee" property="salary" value="90000"/>
    
    <p>Name: <%= employee.getName() %></p>
    <p>Salary: <%= employee.getSalary() %></p>
</body>
</html>