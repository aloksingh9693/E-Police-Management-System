<%-- 
    Document   : retrieve_prmo_demo
    Created on : Feb 23, 2011, 10:11:17 AM
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

    String nm =null;
    String dat= null;
    String st = null;
    String np = null;
    String tha = null;
    String url = null;

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRMOTION/PUNISHMENT</title>
    </head>
    <center><p><b><u><font size="18" color="blue">EMPLOYEE PROMOTION/PUNISHMENT RECORD</font></u></b></p></center><br/><br/>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>

                <th>NAME</th>
                <th>OPERATION</th>
                 <th>DATE</th>
                <th>NEW POST</th>


                <th>THANA NAME</th>


            </tr>
            <%
            try
            {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");



          ps=con.prepareStatement("select e.name,s.value,to_char(pr.pd_date),p.post_name,t.thana_name  from emp_info e,status s,emp_prmo_demo pr,post p,thana t where e.emp_id=pr.emp_id and  s.st_id = pr.st_id and p.post_id=pr.n_post_id and t.thana_id=pr.thana_id");


 rs=ps.executeQuery();

           while( rs.next()){
         //   rl = rs.getInt(1);

            nm=rs.getString(1);
           // fees=rs.getString(4);
            st = rs.getString(2);

            dat = rs.getString(3);
           np = rs.getString(4);
           tha = rs.getString(5);
          //  cont = rs.getString(11);

           // jp = rs.getString(13);
          //  jpo = rs.getString(14);




            %>
            <tr align="center">


                <td><%= nm %></td>

                <td><%= st %></td>
                <td><%= dat %></td>
                   <td><%= np %></td>
                 <td><%= tha %></td>
                







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
