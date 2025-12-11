<%-- 
    Document   : pass
    Created on : Feb 19, 2011, 4:05:19 PM
    Author     : TFP
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language=javascript src="" type=text/javascript>
   
    </script>
    </head>
    <body>
      <%!
        Connection cn;
        PreparedStatement pn;
        ResultSet rs;
        String u_id = null;
        String u_pass = null;
        String u_id1 = null;
        String u_pass1 = null;
        int a=0;
    %>
    <%
                u_id = request.getParameter("txt_uid");
                u_pass = request.getParameter("txt_pass");
                try
                        {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String url = "jdbc:oracle:thin:@localhost:1521:XE";
                cn = DriverManager.getConnection(url, "scott", "tiger");
                pn = cn.prepareStatement("select * from pass");
                rs = pn.executeQuery();
                while (rs.next()) 
                {
                    u_pass1 = rs.getString(4);
                    u_id1 = rs.getString(5);
                    if(u_id.equals(u_id1) && u_pass.equals(u_pass1))
                        {
                        a=1;
                                             session.setAttribute("username", u_id);
                                             response.sendRedirect("home.jsp");
                       break;
                         }                    
                }
                if(a==0)

                        {
                         response.sendRedirect("login2.jsp");
                         }
           }
                catch(Exception e)
           {
                out.print(e);
           }
    %>
    </body>
</HTML>
