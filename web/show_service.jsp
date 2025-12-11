<%-- 
    Document   : show_service
    Created on : Feb 9, 2011, 4:45:02 PM
    Author     : anshuman
--%>

<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
String nmp=null;
int id,id1;
%>
<%
try
        {
nmp=(String)session.getAttribute("name");
if(nmp==null)
    {
String empid=(String) session.getAttribute("empid");
id = Integer.parseInt(empid);
}
}
catch(Exception e){}
%>
<%!
    Connection con=null;
    PreparedStatement ps=null;
    PreparedStatement ps2=null;
    PreparedStatement ps3=null;
    ResultSet rs=null;
    PreparedStatement ps1=null;
    ResultSet rs1=null;
    int sal=0;
String post_name=null;
String tha_name=null;
   String url =null;
   String emp_name = null;


    Date doi=null;
    Date dou = null;
    int pst=0;
   // String dst = null;
   // String cit =null;
    int tha = 0;
    int pos = 0;



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Service</title>
    </head>
    <center>EMPLOYEE SERVICE RECORD</center><br><br>
    
    <body>
       <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th>EMP NAME</th>
                <th>DATE OF INCHARGE</th>
                <th>DATE OF DISCHARGE</th>
                <th>POST </th>
                
               
                <th>THANA </th>

            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");
            if(nmp==null){
            ps=con.prepareStatement("select * from emp_service where emp_id= "+id);

               }
             else
                 {
                 ps1=con.prepareStatement("select * from emp_info where name=?" );
                 ps1.setString(1, nmp);
                 rs1=ps1.executeQuery();
                 if(rs1.next())
                     {
                 id1=rs1.getInt(1);
                 }
                 ps=con.prepareStatement("select * from emp_service where emp_id= "+id1 );
                
                 }

            rs=ps.executeQuery();

           while( rs.next()){
            sal = rs.getInt(1);

            doi = rs.getDate(2);
            dou = rs.getDate(3);
            pst = rs.getInt(4);
            pos = rs.getInt(5);
            
            tha = rs.getInt(6);
            }
             %>
             <%
             ps2=con.prepareStatement("select * from thana where thana_id=?");
             ps2.setInt(1, tha);
             ResultSet rs1=ps2.executeQuery();
             if(rs1.next())
                 {
                 tha_name = rs1.getString(2);
             }
              ps3=con.prepareStatement("select * from post where post_id=?");
             ps3.setInt(1, pos);
             ResultSet rs2=ps3.executeQuery();
             if(rs2.next())
                 {
                 post_name = rs2.getString(2);
             }
             %>
             <tr align="center">
                <td><%= nmp %></td>
                <td><%= doi %></td>
                <td><%= dou %></td>
                     
               <td><%= post_name %></td>
                
                <td><%= tha_name %></td>

            </tr>
            
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
