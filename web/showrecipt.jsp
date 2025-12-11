<%-- 
    Document   : showrecipt
    Created on : Feb 19, 2011, 7:26:29 PM
    Author     : himanshu jha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="591" height="223" border="1">
          <tr>
            <td valign="top"><form name="form1" method="post" action="">
			<table width="688" height="207">
        <tr>
          <td width="169" height="41"><strong>Select RecieptNumber : </strong></td>
          <td width="152"><div align="center">
                  <%! PreparedStatement pst=null;
                  Connection con=null;
                  ResultSet rs=null;

%>
             
             
            <select name="menu1" >
             <%

		    try {
           Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("Select reciptno from vehiclechk");
            rs=pst.executeQuery();
		while(rs.next())
		{
                %>
                <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                <%
                }
                  }
        catch(Exception e)
        {
            out.print(e);
        }finally {
            
        }%>
            </select>
          </div></td>
         
        </tr>
        <tr>
          <td height="38"><strong>OwnerName : </strong></td>
          <td bgcolor="#FFFFCC"></td>
          <td width="5">&nbsp;</td>
          <td width="171"><strong>DrivingLicenseNumber:</strong></td>
          <td width="167" colspan="2" bgcolor="#FFCCCC"><div align="center"><label></label></div></td>
          </tr>
        <tr>
          <td height="26"><strong>Date : </strong></td>
          <td bgcolor="#FFFFCC"><div align="center"><label></label></div></td>
          <td>&nbsp;</td>
          <td><strong>InsurencePolicyNumber:</strong></td>
          <td colspan="2" bgcolor="#FFCCCC"><div align="center"><label></label></div></td>
          </tr>
        <tr>
          <td height="37"><strong>VehicleNumber : </strong></td>
          <td bgcolor="#FFFFCC"><div align="center"><label></label></div></td>
          <td>&nbsp;</td>
          <td><strong>PanalityRs. : </strong></td>
          <td colspan="2" bgcolor="#FFCCCC"><div align="center"><label></label></div></td>
          </tr>
        <tr>
          <td height="28"><strong>VehicleType : </strong></td>
          <td bgcolor="#FFFFCC"><div align="center"><label></label></div></td>
          <td>&nbsp;</td>
          <td><strong>PermanentAddress : </strong></td>
          <td colspan="2" bgcolor="#FFCCCC"><div align="center"><label></label></div></td>
          </tr>
        <tr>
          <td height="21"><strong>ListAgainstRule : </strong></td>
          <td colspan="5" bgcolor="#FFCCCC"><div align="center"><label></label></div></td>
          </tr>
      </table>
            </form>
            </td>
          </tr>
        </table>
        <h1>&nbsp;</h1>
    </body>
</html>
