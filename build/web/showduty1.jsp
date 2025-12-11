<%-- 
    Document   : showduty1
    Created on : Feb 24, 2011, 10:46:54 AM
    Author     : TFP
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #330000;
            }
            .style2 {font-size: 16px}
.style3 {
	color: #006699;
	font-weight: bold;
}
            -->
        </style>
        <%!            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            int rl = 0;
            String dname = null;
            String oname = null;
            int distance;
            int mread;
            int pqty;
            String vecno = null;
            String dutytime = null;
            String thana=null;
              int th;

        %>
    </head>
    <body>
        <table width="1034" height="434">
            <tr>
                <td width="1024" height="370"><form name="form1" method="post" action="">
                        <table width="1027" height="156">
                            <tr>
                              <td width="117" height="46" bgcolor="#FF9999"><div align="center"><strong>DriverName</strong></div></td>
                              <td width="123" bgcolor="#FF9999"><div align="center"><strong>OfficerName</strong></div></td>
                              <td width="101" bgcolor="#FF9999"><div align="center"><strong>CoverDistance</strong></div></td>
                              <td width="115" bgcolor="#FF9999"><div align="center"><strong>MeterReading</strong></div></td>
                              <td width="158" bgcolor="#FF9999"><div align="center"><strong>PatrollingInformation</strong></div></td>
                              <td width="117" bgcolor="#FF9999"><div align="center"><strong>VehicleNumber</strong></div></td>
                              <td width="91" bgcolor="#FF9999"><div align="center"><strong>DutyTime</strong></div></td>
                              <td width="101" bgcolor="#FF9999"><div align="center"><strong>ThanaName</strong></div></td>
                            </tr>
                            <%
                            th=Integer.parseInt(request.getParameter("a"));
                                        try {

                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            String url = "jdbc:oracle:thin:@localhost:1521:XE";
                                            con = DriverManager.getConnection(url, "scott", "tiger");


                                            ps = con.prepareStatement("select * from carinfo where thanaid=?");
                                            ps.setInt(1,th );



                                            rs = ps.executeQuery();

                                            while (rs.next()) {

                                                dname = rs.getString(2);
                                                oname = rs.getString(3);
                                                distance = rs.getInt(4);
                                                mread = rs.getInt(5);
                                                pqty = rs.getInt(6);
                                                vecno = rs.getString(7);
                                                dutytime= rs.getString(8);
                                                thana= rs.getString(9);





                            %>
                            <tr align="center">
                             
                                <td height="102"><div align="center" class="style3"><%= dname%></div></td>
                                <td><div align="center" class="style3"><%= oname%></div></td>
                                <td><div align="center" class="style3"><%= distance%></div></td>
                                <td><div align="center" class="style3"><%= mread%></div></td>
                                <td><div align="center" class="style3"><%= pqty%></div></td>
                                <td><div align="center" class="style3"><%= vecno%></div></td>
                                <td><div align="center" class="style3"><%= dutytime%></div></td>
                              <td><div align="center" class="style3"><%= thana%></div></td>
                            </tr>
                            <%
                                            }
                            %>
                  </table>
                        <%
                                        //ps.close();
                                       // con.close();
                                    } catch (Exception e) {
                                        out.print(e);
                                    }
                        %>
       
    </form>            </td>
</tr>
<tr>
    <td height="56"><div align="center" class="style1"><marquee>DutyDetail<span class="style2"> According date</span></marquee></div></td>
</tr>
</table>
<h1>&nbsp;</h1>
</body>
</html>
