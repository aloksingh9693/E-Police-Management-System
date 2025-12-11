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

    String dis;
    String ph=null;

    String tha = null;




%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THANA</title>
    </head>
     <center><p><b><u><font size="18" color="blue">THANA RECORD</font></u></b></p></center><br/><br/>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th>THANA</th>
                <th>CONTACT NUMBER</th>
                <th>DISTRICT</th>



            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");

            ps=con.prepareStatement("select t.thana_name,t.phone,d.dis_name from thana t,district d where t.dis_id=d.dis_id order by d.dis_name ");



            rs=ps.executeQuery();

           while( rs.next()){
            tha = rs.getString(1);

            ph= rs.getString(2);
            dis = rs.getString(3);


             %>
             <tr align="center">
                <td><%= tha%></td>
                <td><%= ph %></td>
                <td><%= dis %></td>
               


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
