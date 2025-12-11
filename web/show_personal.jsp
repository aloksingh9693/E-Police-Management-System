<%-- 
    Document   : show_personal
    Created on : Feb 9, 2011, 12:27:32 PM
    Author     : anshuman
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
String nmp=null;
int id;
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
    PreparedStatement ps=null,ps2=null,ps3=null;
    ResultSet rs=null,rs2=null;
    int rl=0;
    String fees=null;
    String nm=null;
    String strm=null;
    String url=null;
    String dob=null;
    String add=null;
    String cat = null;
    String bg =null;
    String edu = null;
    String cont = null;
    String jd =null;
    String jp= null;
    String jpo = null;
    String mr = null;
    String thana_name;
    int tha  =0;

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE PERSONAL</title>
    </head>
    <center><p><b><u><font size="16" color="blue"><%=nm%></font> Personal Record</u></b></p></center><br/><br/>

    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                
               
                <th>FATHER</th>
                <th>GENDER</th>
                <th>DOB</th>
                <th>ADDRESS</th>
                <th>CATEGORY</th>
                <th>B-GROUP</th>
                <th>MARRIED</th>
                <th>EDUCATION</th>
                <th>CONTACT</th>
                <th>JOINING DATE</th>
                <th>JOINING PLACE</th>
                
            </tr>
            <%
            try
            {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");

            if( nmp==null)
                {
          ps=con.prepareStatement("select * from emp_info where emp_id="+id );
           
           }
             else
                 {
                 ps=con.prepareStatement("select * from emp_info where name=?" );
                ps.setString(1, nmp);
                 }

            rs=ps.executeQuery();

           while( rs.next()){
            rl = rs.getInt(1);
            nm=rs.getString(2);
            strm=rs.getString(3);
            fees=rs.getString(4);
            dob = rs.getString(5);
            add = rs.getString(6);
            cat = rs.getString(7);
            bg = rs.getString(8);
            mr = rs.getString(9);
            edu = rs.getString(10);
            cont = rs.getString(11);
            jd = rs.getString(12);
            tha = rs.getInt(13);
            



                 
            %>
            <%
            ps2=con.prepareStatement("select * from thana where thana_id=?");
             ps2.setInt(1,tha );
             ResultSet rs1=ps2.executeQuery();
             if(rs1.next())
                 {
                 thana_name= rs1.getString(2);
             }

             %>
            
            <tr align="center">
                
              
                <td><%= strm %></td>
                <td><%= fees %></td>
                <td><%= dob %></td>
                <td><%= add %></td>
                <td><%= cat %></td>
                <td><%= bg %></td>
                <td><%= mr %></td>
                <td><%= edu %></td>
                <td><%= cont %></td>
                <td><%= jd %></td>
                <td><%= thana_name %></td>
              
            </tr>
            <%
                 }
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
