<%-- 
    Document   : showcarm2
    Created on : Feb 25, 2011, 11:08:28 AM
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
}
.style3 {font-size: 18px; font-weight: bold; color: #006699; }
-->
        </style>
</head>
    <body>
        <table width="1095" height="452">
          <tr>
            <td><form name="form1" method="post" action="">
              <table width="1089" height="198">
                <tr>
                  <td height="88" colspan="6" bgcolor="#FFFFFF"><marquee>
                    <div align="center"><span class="style1">CarMaintainDetail</span><strong> AccordingDate
                      </strong>                      </div>
                  </marquee></td>
                </tr>
                <tr>
                  <td width="96" height="44" bgcolor="#FF9999"><div align="center"><strong>ServiceId</strong></div></td>
                  <td width="188" bgcolor="#FF9999"><div align="center"><strong>DriverName</strong></div></td>
                  <td width="126" bgcolor="#FF9999"><div align="center"><strong>VehicleNumber</strong></div></td>
                  <td width="160" bgcolor="#FF9999"><div align="center"><strong>ServiceCharge</strong></div></td>
                  <td width="301" bgcolor="#FF9999"><div align="center"><strong>RepairDetail</strong></div></td>
                  <td width="178" bgcolor="#FF9999"><div align="center"><strong>ThanaId</strong></div></td>
                </tr>
                <%!
                  Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            int rl = 0;
            String dname = null;
            String oname = null;
            int distance;
            int sid;
            int charge;
            String vecno = null;
            String detail = null;
            String thana=null;
              int th;
                

%>
                   <%
                            th=Integer.parseInt(request.getParameter("a"));
                                        try {

                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            String url = "jdbc:oracle:thin:@localhost:1521:XE";
                                            con = DriverManager.getConnection(url, "scott", "tiger");


                                            ps = con.prepareStatement("select * from carmaintain where thanaid=?");
                                            ps.setInt(1,th );



                                            rs = ps.executeQuery();

                                            while (rs.next()) {

                                                sid = rs.getInt(1);
                                                dname = rs.getString(3);
                                                vecno = rs.getString(4);
                                                charge = rs.getInt(5);
                                                detail = rs.getString(6);
                                                thana = rs.getString(7);
                                                //dutytime= rs.getString(8);
                                                //thana= rs.getString(9);





                            %>
                <tr>
                  <td height="56"><div align="center" class="style3"><%= sid%></div></td>
                  <td><div align="center" class="style3"><%=dname%></div></td>
                  <td><div align="center" class="style3"><%=vecno%></div></td>
                  <td><div align="center" class="style3"><%=charge%></div></td>
                  <td><div align="center" class="style3"><%=detail%></div></td>
                  <td><div align="center" class="style3"><%=thana%></div></td>
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

            
            </form>
            </td>
          </tr>
        </table>
        <h1>&nbsp;</h1>
    </body>
</html>
