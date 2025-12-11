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
	font-size: smaller;
	font-weight: bold;
}
.style2 {
	font-size: small;
	font-weight: bold;
}
.style3 {font-size: small}
.style4 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="602" >
  
  
  <tr>
    <td width="592" height="624" bgcolor="#FFFFFF"><form id="form1" name="form1" method="post" action="hist_entry">
      <table width="595" height="601" bordercolor="#FFFFFF" bgcolor="#FFFFFF" >
        <tr>
          <td colspan="2" align="center"><span class="style4">HISTORY ENTRY </span></td>
          </tr>
        <tr>
          <td width="452"><div align="right"><strong>WIF\HUS NAME</strong></div></td>
          <td width="452"><input name="WH_NAME" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td width="452"><div align="right"><strong>BIRTH PLACE </strong></div></td>
          <td><input name="BIRTHPLACE" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td width="452"><div align="right"><strong>EDUCATION</strong></div></td>
          <td><input name="EDUCATION" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td> <div align="right"><strong>CRIMINAL_ID</strong> </div></td>
          <td><%!
                                                      PreparedStatement pst = null;
                                                      Connection con = null;
                                        ResultSet rs = null;


                                    %> 
	
	
	
	<select name="menu1">
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select CRIMINAL_ID from CRIMINAL_DTLS");

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
          <td><div align="right"><strong>BLOOD GROUP</strong></div></td>
          <td><select name="menu2" onchange="">
            <option>SELECT</option>
            <option>O-</option>
            <option>O+</option>
            <option>A-</option>
            <option>A+</option>
            <option>B-</option>
            <option>B+</option>
            <option>AB-</option>
            <option>AB+</option>
          </select></td>
        </tr>
        <tr>
          <td><div align="right"><strong>CRIME AREA: </strong></div></td>
          <td bordercolor="#FFFFFF" bgcolor="#FFFFFF"><input name="C_AREA" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td><div align="right"><strong>OCCUPATION: </strong></div></td>
          <td><input name="occupation" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td height="118" align="center" valign="middle"><div align="right"><strong>PROPERTY DETAILS:</strong></div></td>
          <td align="right" valign="top"><table width="458" border="0">
              <tr align="right">
                <td width="65"><div align="left" class="style1">HOME </div></td>
                <td width="144" align="left"><label>
                  <input type="text" name="HOME " />
                </label></td>
                <td width="79"><div align="left" class="style2">REG.NO1.:</div></td>
                <td width="152" align="left"><label>
                  <input type="text" name="REG_NO1" />
                </label></td>
              </tr>
              <tr>
                <td width="65"><div align="left" class="style1">AREA:</div></td>
                <td colspan="3" align="center"><div align="left">
                    <input name="AREA" type="text" size="58" />
                  </div>
                    <div align="left"></div></td>
              </tr>
              <tr>
                <td width="65"><div align="left" class="style2">LAND</div></td>
                <td><label>
                  <input type="text" name="LAND" />
                </label></td>
                <td width="79"><span class="style2">REG. NO2.: </span></td>
                <td><label>
                  <input type="text" name="REG_NO2" />
                </label></td>
              </tr>
              <tr>
                <td width="65" height="43"><span class="style2">BANK A/C NO: </span></td>
                <td><label>
                  <input type="text" name="BANK_AC" />
                </label></td>
                <td width="79"><div align="left" class="style1">BANK:</div></td>
                <td><label>
                  <input type="text" name="BANK" />
                </label></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="160" align="center" valign="middle"><div align="center"><strong>PHYSICAL STRUCTURE:</strong></div></td>
          <td align="right" valign="top"><table width="458" border="0">
              <tr align="right">
                <td width="65"><div align="left" class="style1">HEIGHT:</div></td>
                <td width="144" align="left"><label>
                  <input type="text" name="HEIGHT" />
                </label></td>
                <td width="79"><div align="left" class="style2">WEIGHT</div></td>
                <td width="152" align="left"><label>
                  <input type="text" name="WEIGHT" />
                </label></td>
              </tr>
              <tr>
                <td width="65"><div align="left" class="style2">HAIR COLOR : </div></td>
                <td><label>
                  <input type="text" name="HAIR" />
                </label></td>
                <td width="79"><strong><span class="style3">EYE COLOR: </span></strong></td>
                <td><label>
                  <input type="text" name="EYE" />
                </label></td>
              </tr>
              <tr>
                <td width="65" height="26"><strong><span class="style3">SKIN COLOR: </span></strong></td>
                <td><label>
                  <input type="text" name="SKIN" />
                </label></td>
                <td width="79"><div align="left" class="style1">HANDED: </div></td>
                <td><label>
                  <select name="menu3" onchange="">
                    <option>select</option>
                    <option>right</option>
                    <option>left</option>
                    </select>
                </label></td>
              </tr>
              <tr>
                <td height="26"><span class="style3"><strong>OTHER:</strong></span></td>
                <td colspan="3"><input name="OTHER" type="text" size="60" /></td>
                </tr>
          </table></td>
        </tr>
        <tr>
          <td width="452" height="146" align="center" valign="top"><div align="center"><strong>RELATIVE's INFORMATION:</strong></div></td>
          <td valign="top"><table width="458" height="104" >
            <tr>
              <td width="172" class="style2">RELATION NAME</td>
              <td width="274"><input type="text" name="R_NAME" /></td>
            </tr>
            <tr>
              <td><strong class="style3">RELATION</strong></td>
              <td><input type="text" name="RELATION" /></td>
            </tr>
            <tr>
              <td><strong class="style3">CONTECT NO </strong></td>
              <td><input type="text" name="R_CON" /></td>
            </tr>
            <tr>
              <td height="23"><strong class="style3">ADDRESS</strong></td>
              <td><input type="text" name="R_ADD" /></td>
            </tr>
          </table>            <p align="center"><INPUT Name="act" onClick="verifyData( )" Type="Submit"Value="Submit"></p>            </td>
        </tr>
      </table>
          
  
  
  <tr>
    <td height="19" align="center" valign="middle" bgcolor="#FFFFFF"><div align="center">
	</div>
      <div align="right"></div>
      </form>    </td>
  </tr>
</table>
</body>
</html>
