<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
</head>

<body>
<table width="574"   onLoad="set(this.form)"><form name="form1" id="form1" method="post" action="criminal_servlet">
 
 
 
 
 
  <tr>
    <td height="43" colspan="2" align="left" bgcolor="#FFFFFF"><div align="center"><span class="style1">
    <marque><strong>CRIMINAL RECORD </strong></marque>
    </span></div></td>
  </tr>
  
  <tr>
    <td width="161" height="40" bgcolor="#FFFFFF"><div align="right">CRIME TYPE </div></td>
    <td width="401" bgcolor="#FFFFFF"><label>
	 . 
	 <input type="text" name="CRIMETYPE" />
	</label></td>
  </tr>
  <tr>
    <td height="35" bgcolor="#FFFFFF"><div align="right">STATUS</div></td>
    <td bgcolor="#FFFFFF">&nbsp;
      <input type="text" name="STATUS" /></td>
  </tr>
  <tr>
    <td height="34" bgcolor="#FFFFFF"><div align="right"><span class="style6">DATE OF JAIL : </span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;
      <input type="text" name="DATEOFJAIL " /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><div align="right">PERSON_ID</div></td>
    <td bgcolor="#FFFFFF"><%!
                                                      PreparedStatement pst = null;
                                                      Connection con = null;
                                        ResultSet rs = null;


                                    %> 
	
	
	
	<select name="menu1" >
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select PERSON_ID from PERSON_FIR_REF");

                                                        rs = pst.executeQuery();
                                                        while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
                                        <%
                                                        }
                                                    } catch (Exception e) {
                                                        out.print(e);
                                                    } finally {
                                                    }%>
        </select>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#FFFFFF"><table width="581" >
      <tr>
        <td width="262" align="right"><INPUT Name="act" onClick="verifyData( )" Type="Submit"Value="Submit">&nbsp;</td>
        <td width="303"><input type="reset" value="Reset" name="Submit" /></td>
      </tr>
    </table></td>
  </tr>
  </form>
</table>
</body>
</html>
