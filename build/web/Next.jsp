<%-- 
    Document   : Next
    Created on : Feb 9, 2011, 9:24:18 PM
    Author     : anshuman
--%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
String empid = request.getParameter("menu1");
String name = request.getParameter("menu2");

session.setAttribute("empid",empid);
session.setAttribute("name",name);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <a href="show_personal.jsp">PERSONAL RECORD</a><BR>
    <a href="show_service.jsp">SERVICE RECORD</a><BR>
    <a href="show_salary.jsp">SALARY RECORD</a><BR>
    <a href="show_promotion.jsp">PROMOTION RECORD</a><BR>
  
    
    </body>
</html>
