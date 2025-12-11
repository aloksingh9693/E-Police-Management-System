<%-- 
    Document   : logout
    Created on : Feb 22, 2011, 6:33:30 PM
    Author     : TFP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.awt.Window" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        

    </head>
    <body>
        <script>
         Response.Cache.SetCacheability(HttpCacheability.NoCache);

       Response.Cache.SetNoStore();
          </script>
	<script>parent.window.location='login.jsp' </script>

       
    </body>
</html>
