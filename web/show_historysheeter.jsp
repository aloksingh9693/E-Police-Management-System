<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style4 {
	color: #666666;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	font-weight: bold;
}
.style9 {color: #666666; }
-->
</style>

 <script type="text/JavaScript">
            <!--
            function showStud(std_value)
            {
                if(std_value!="-1")
                {
                    xmlHttp=GetXmlHttpObject()
                    if (xmlHttp==null)
                    {
                        alert ("Browser does not support HTTP Request")
                        // return
                    }
                    var url="getuser3.jsp"
                    url=url+"?std_id="+std_value
                    xmlHttp.onreadystatechange=stateChanged
                    xmlHttp.open("GET",url,true)
                    xmlHttp.send(null)
                }
                else
                {
                    alert("Please Select a Student Code 1 st");
                    return
                }
            }

            function stateChanged()
            {               if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                {
                    var showdata = xmlHttp.responseText;
                    var str = showdata.split(":");
                
                     document.form1.t1.value=str[0];
                     document.form1.t2.value= str[1];
                     document.form1.t3.value=str[2];
                     document.form1.t4.value=str[3];
                     document.form1.t5.value=str[4];
                     document.form1.t6.value=str[5];
                     document.form1.t7.value=str[6];
					 document.form1.t8.value=str[7];
					 document.form1.t9.value=str[8];
					 document.form1.t10.value=str[9];
					 document.form1.t11.value=str[10];
					 document.form1.t12.value=str[11];
					 document.form1.t13.value=str[12];
					 document.form1.t14.value=str[13];
					 document.form1.t15.value=str[14];
					 document.form1.t16.value=str[15];
					 document.form1.t17.value=str[16];
					 document.form1.t18.value=str[17];
					 document.form1.t19.value=str[18];
					 document.form1.t20.value=str[19];
					 document.form1.t21.value=str[20];
					 document.form1.t22.value=str[21];
					 document.form1.t23.value=str[22];
					 document.form1.t24.value=str[23];
					 document.form1.t25.value=str[24];
					 document.form1.t26.value=str[25];
					 document.form1.t27.value=str[26];
					
                    
                }
            }

            function GetXmlHttpObject()
            {
                var xmlHttp=null;
                try
                {
                    // Firefox, Opera 8.0+, Safari
                    xmlHttp=new XMLHttpRequest();
                }
                catch (e)
                {
                    //Internet Explorer
                    try
                    {
                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e)
                    {
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
            //-->
        </script>

</head>

<body>
<table width="486" height="338"  align="center">
  <tr>
    <td valign="top"><form id="form1" name="form1" method="post" action="">
      <table width="476" >
        <tr>
          <td colspan="2" align="center" valign="middle"><span class="style7">HISTORYSHEETER</span></td>
          </tr>
        <tr>
          <td width="213" height="26" bgcolor="#FFFFFF"><div align="right" class="style1">  
            <div align="left" class="style9">HISTORYSHEETER_ID:</div>
          </div></td>
          <td width="247" bgcolor="#FFFFFF"><%!
                                                      PreparedStatement pst = null;
                                                      Connection con = null;
                                        ResultSet rs = null;


                                    %>
                                    <select name="menu1" onchange="showStud(this.value);">
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select HISTORYSHEETER_ID from HISTORYSHEETER_DTLS");

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
          <td bgcolor="#FFFFFF"> WIFE\HUSBAND_NAME </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t1" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> BIRTH_PLACE </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t2" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">  EDUCATION  </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t3" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> CRIMINAL_ID </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t4" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> BLOOD_GROUP </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t5" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> CRIME_AREA </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t6" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> OCCUPATION </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t7" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table cellpadding="0" cellspacing="0" border="0" summary="" id="R12048400172532158" htmldb:href="p=4500:2100:548276173057699:pg_R_R12048400172532158:NO:">
            <tbody>
              <tr>
                <td headers="COLUMN_NAME">HEIGHT</td>
              </tr>
            </tbody>
          </table>
            <br /></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t8" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> WEIGHT </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t9" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> HAIR_COLOUR </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t10" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> EYE_COLOUR </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t11" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">SKIN_COLOUR </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t12" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> HANDED </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t13" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> OTHER_INFO </td>
          <td bgcolor="#FFFFFF"><input type="text" name="t14" /></td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#FFFFFF"> <div align="left" class="style9">   <strong><strong>PROPERTY DETAILS. . . . . . . . . </strong>. . . . . . . . . . . . . . . . . . </strong>. </div></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">PROPERTY_ID </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t15" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">HOME_DTLS </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t16" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">HOME_REG_NO </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t17" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">LOCATION </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t18" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">LAND_DTLS </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t19" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">LAND_REG_NO </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t20" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">BANK_A\C </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t21" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">BANK_NAME </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t22" /></td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#FFFFFF"><span class="style4">RELATION DETAILS . . . . . . . . . . . . . . . . . . . . . . . . . . . </span></td>
          </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">RELATION_ID </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t23" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">RELATIVE_NAME </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t24" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">RELATION </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t25" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">CONTACT_NO </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t26" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"> <div align="right">ADDRESS </div></td>
          <td bgcolor="#FFFFFF"><input type="text" name="t27" /></td>
        </tr>
        <tr>
          <td height="23" colspan="2" bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
      </table>
        </form>
    </td>
  </tr>
</table>
</body>
</html>
