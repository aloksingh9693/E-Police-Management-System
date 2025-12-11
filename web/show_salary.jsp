<%-- 
    Document   : show_salary
    Created on : Feb 9, 2011, 1:41:36 PM
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
    ResultSet rs=null;
     PreparedStatement ps1=null;
    ResultSet rs1=null;
    int sal=0;
    int amt =0;
    int brc = 0;
   String url =null;


    Date dos=null;
    String bnk=null;
    
    String cit =null;



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Salary Detail</title>
    </head>
     <center><p>EMPLOYEE SALARY RECORD</center><br><br>
    <body>
         <table border=0 align="center" bgcolor="#ffccff" width="100%">
             

            <tr>
                <th>SAL ID</th>
                <th>DATE</th>
                  <th>AMOUNT</th>
                <th>BRANCH ID</th>
               
              
              

            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");
            if(nmp==null){
            ps=con.prepareStatement("select * from emp_salary where emp_id ="+id);
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
                 ps=con.prepareStatement("select * from emp_salary where emp_id= "+id1 );


                 }

            rs=ps.executeQuery();

           while( rs.next()){
            sal = rs.getInt(1);

            dos = rs.getDate(2);
           
            brc = rs.getInt(5);
           
            amt = rs.getInt(3);
             %>
            <tr>
                <td align="center"><%= sal %></td>
                <td align="center"><%= dos %></td>
                
              
                
                <td align="center"><%= amt %></td>
                <td align="center"><%= brc %></td>
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
