<%-- 
    Document   : retrieve_service
    Created on : Feb 15, 2011, 9:56:35 PM
    Author     : anshuman
--%>
<%@ page import="java.sql.*" %>
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

    String nm;
    String doi=null;
    String dou = null;
    String pst=null;
    String tha = null;
    



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Record</title>
    </head>
    <center><p><b><u><font size="18" color="blue">EMPLOYEE SERVICE RECORD</font></u></b></p></center><br/><br/>
    <body>
       
         <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th>NAME</th>
                <th>DATE OF INCHARGE</th>
                <th>DATE OF DISCHARGE</th>
                <th>POST</th>
                <th>THANA</th>
                

            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");

            ps=con.prepareStatement("select e.name,to_char(s.in_date),to_char(s.out_date) ,p.post_name,t.thana_name from emp_info e,emp_service s ,post p,thana t where e.emp_id=s.emp_id and p.post_id= s.post_id and t.thana_id=s.thana_id ");



            rs=ps.executeQuery();

           while( rs.next()){
            nm = rs.getString(1);

            doi = rs.getString(2);
            dou = rs.getString(3);
            pst = rs.getString(4);
            tha = rs.getString(5);
            
             %>
             <tr align="center">
                <td><%= nm %></td>
                <td><%= doi %></td>
                <td><%= dou %></td>
                <td><%= pst %></td>
                <td><%= tha %></td>
               

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
