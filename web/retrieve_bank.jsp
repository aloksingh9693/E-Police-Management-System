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

    String br=null;
    String ba=null;

    String cit = null;




%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BANK</title>
    </head>
     <center><p><b><u><font size="18" color="blue">BANK RECORD</font></u></b></p></center><br/><br/>
    <body>
        <table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                <th>BRANCH </th>
                <th>CITY</th>
                <th>BANK</th>



            </tr>
            <%
            try
            {
          // int emp = Integer.parseInt(request.getParameter("emp_id"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");

            ps=con.prepareStatement("SELECT BR.BRANCH_NAME,B.BANK_NAME,C.CITY_NAME FROM BANK_BRANCH BR, BANK B,CITY C WHERE BR.BANK_ID = B.BANK_ID AND BR.CITY_ID = C.CITY_ID ");



            rs=ps.executeQuery();

           while( rs.next()){
            br = rs.getString(1);

            ba= rs.getString(2);
            cit = rs.getString(3);


             %>
             <tr align="center">
                <td><%= br%></td>
                <td><%= ba %></td>
                <td><%= cit %></td>
               


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
