<%-- 
    Document   : retrieve_salary
    Created on : Feb 21, 2011, 12:06:28 AM
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
    String dpt = null;
    String dd = null;
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Record</title>
    </head>
    <center><p><b><u><font size="18" color="blue">EMPLOYEE SALARY RECORD</font></u></b></p></center><br/><br/>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                      <th>NAME</th>
                <th>DATE</th>
                <th>BANK NAME</th>

                <th>BRANCH NAME</th>
                <th>AMOUNT</th>
                <th>CITY</th>



            </tr>
             <%
            try
            {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");



          ps=con.prepareStatement("select name,to_char(sdate), bank_name ,branch_name,amount,city_name from emp_info,emp_salary,bank, bank_branch,city where emp_info.emp_id=emp_salary.emp_id and bank.bank_id = bank_branch.bank_id and bank_branch.city_id = city.city_id and emp_salary.branch_id = bank_branch.branch_id ");






            rs=ps.executeQuery();

           while( rs.next()){
         //   rl = rs.getInt(1);
             bg = rs.getString(1);
             dd = rs.getString(2);
            strm=rs.getString(3);
           // fees=rs.getString(4);
            dob = rs.getString(4);
           
            add = rs.getString(5);
            cat = rs.getString(6);


            %>
            <tr align="center">

                     <td><%= bg %></td>
                <td><%= dd %></td>

                <td><%= strm %></td>
                <td><%= dob %></td>
                   <td><%= add %></td>
                 <td><%= cat %></td>
               
            







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
