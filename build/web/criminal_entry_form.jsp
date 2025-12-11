<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">
<!--


function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
    <form action="person_entry" method="post">
<table width="602">
  <tr>
    <td width="592" height="46" align="center" valign="middle" bgcolor="#FFFFFF"><span class="style1">CRIMINAL ENTRY </span></td>
  </tr>
  
  <tr>
    <td>
      <table width="592" border="0">
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>NAME:</strong></div></td>
          <td bgcolor="#FFFFFF"><input name="NAME" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>NICK NAME: </strong></div></td>
          <td bgcolor="#FFFFFF"><input name="NICK_NAME" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td width="124" valign="middle" bgcolor="#FFFFFF"><div align="right"><strong>FATHER NAME: </strong></div></td>
          <td bgcolor="#FFFFFF"><input name="FATHER" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><strong>MOTHERNAME</strong></td>
          <td bgcolor="#FFFFFF"><input name="MOTHER" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>GENDER:</strong></div></td>
          <td bgcolor="#FFFFFF"><label>
            <select name="menu1" >
			 <option>Select</option>
              <option>Male</option>
              <option>Female</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td width="124" height="30" bgcolor="#FFFFFF"><div align="right"><strong>CAST:</strong></div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="CAST" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>DATE OF BIRTH: </strong></div></td>
          <td bgcolor="#FFFFFF"><label>
            <input type="text" name="DOB" />
          </label></td>
        </tr>
        <tr>
          <td width="124" height="21" align="center" valign="middle" bgcolor="#FFFFFF"><div align="right"><strong>ADDRESS:</strong></div></td>
          <td width="452" align="right" valign="top" bgcolor="#FFFFFF"><div align="left">
            <input type="text" name="ADDRESS" />
          </div></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>CONTACT NO.: </strong></div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="CONTACT" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>PHYSICALMARK</strong></div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="MARK" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right">
            <p><strong>RELATIVE</strong><strong>NAME: </strong></p>
            </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="R_NAME" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>FRIEND_NAME</strong></div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="FRIEND" /></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right"><strong>EMP_ID</strong></div></td>
          <td bgcolor="#FFFFFF"><select name="menu2">
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select EMP_ID from EMP_INFO");

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
      </select></td>
        </tr>
        <tr>
          <td width="124" bgcolor="#FFFFFF"><div align="right">
            <p><strong>FIR_ID:</strong></p>
            </div></td>
          <td bgcolor="#FFFFFF"><%!
                                                      PreparedStatement pst = null;
                                                      Connection con = null;
                                        ResultSet rs = null;


                                    %> 
	
	
	
	<select name="menu3">
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select FIR_ID from FIR_DTLS");

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
            </select></td>
        </tr>
      </table>
      </td>
  </tr>
  
  <tr>
    <td height="29" valign="top"><div align="center">
          <input type="submit" value="submit" />
          
        </div>
          <div align="right"></div>
      
    </td>
  </tr>
</table></form>
     </body>

</html>
