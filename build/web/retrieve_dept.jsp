<%--
    Document   : retrieve_thana
    Created on : Feb 23, 2011, 11:29:49 AM
    Author     : anshuman
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    PreparedStatement ps1=null;
    ResultSet rs1=null;
    int sal=0;

   String url =null;

    String dep=null;
    String hd=null;

    String ph = null;




%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DEPARTMENT</title>
    </head>
     <center><p><b><u><font size="18" color="blue">DEPARTMENT RECORD</font></u></b></p></center><br/><br/>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th>DEPARTMENT </th>
                <th>HEAD OFFICE</th>
                <th>CONTACT NUMBER</th>



            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");

            ps=con.prepareStatement("SELECT DEPT_NAME,HEAD_OFFICE,CONTACT FROM DEPARTMENT ");



            rs=ps.executeQuery();

           while( rs.next()){
            dep = rs.getString(1);

            hd= rs.getString(2);
            ph = rs.getString(3);


             %>
             <tr align="center">
                <td><%= dep%></td>
                <td><%= hd %></td>
                <td><%= ph %></td>



            </tr>
            <%}
            %>
        </table>
        <%
        ps.close();
        con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            %>
    </body>
</html>
