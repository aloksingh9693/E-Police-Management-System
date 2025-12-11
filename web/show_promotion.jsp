<%-- 
    Document   : show_promotion
    Created on : Feb 9, 2011, 8:29:46 PM
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
    PreparedStatement ps=null,ps1=null,ps2=null,ps3=null,ps4=null;
    ResultSet rs=null,rs1=null,rs2=null,rs3=null;
    int rl=0;

    String dob=null;
    String cp=null;
    String np = null;
    String cit =null;
    int tha = 0;
    String url =null;
    int eid =0;
    String tha_name=null;
    int st=0;
    String stat = null;
    int npo =0;
    String npos = null;




%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th> NAME</th>
                <th>OPERATION</th>
                <th>DATE</th>
                <th>NEW POST</th>
                
                <th>THANA</th>

            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");
            if(nmp==null){
            ps=con.prepareStatement("select * from emp_prmo_demo where emp_id= "+id);
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
                 ps=con.prepareStatement("select * from emp_prmo_demo where emp_id= "+id1 );
                 }

            rs=ps.executeQuery();
            
          //  if(rl==id){


           while( rs.next()){
            
            rl = rs.getInt(1);



            st = rs.getInt(2);
            dob = rs.getString(3);
           
            npo = rs.getInt(5);
            tha = rs.getInt(6);
            eid = rs.getInt(7);
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
             ps3.setInt(1, npo);
             ResultSet rs2=ps3.executeQuery();
             if(rs2.next())
                 {
               npos = rs2.getString(2);
             }

             ps4=con.prepareStatement("select * from status where st_id=?");
             ps4.setInt(1, st);
             ResultSet rs3=ps4.executeQuery();
             if(rs3.next())
                 {
               stat = rs3.getString(2);
             }

             %>
             <tr align="center">
                <%
                

                %>
                
               
             
                <td><%= nmp %></td>
                <td><%=stat%></td>
                <td><%= dob %></td>
                <td><%=npos%></td>
                <td><%= tha_name %></td>

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
            System.out.print(e);
        }
        %>
    </body>
</html>
