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
.style3 {color: #000000}
.style4 {
	color: #000000;
	font-weight: bold;
	font-size: 18px;
}
.style5 {color: #333333}
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
                    var url="getuser2.jsp"
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
            {

                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                {
                    var showdata = xmlHttp.responseText;
                    var str = showdata.split(":");
                   
                     document.form1.t1.value=str[1];
                     document.form1.t2.value= str[2];
                     document.form1.t3.value=str[3];
                     document.form1.t4.value=str[4];
                     document.form1.t5.value=str[5];
                     document.form1.t6.value=str[6];
                     document.form1.t7.value=str[7];
					 document.form1.t8.value=str[8];
					 document.form1.t9.value=str[9];
					 document.form1.t10.value=str[10];
					 document.form1.t11.value=str[11];
					 document.form1.t12.value=str[12];
					 document.form1.t13.value=str[13];
					 document.form1.t14.value=str[14];
					 document.form1.t15.value=str[15];
					 document.form1.t16.value=str[16];
					 document.form1.t17.value=str[17];
					 document.form1.t18.value=str[18];
					 document.form1.t19.value=str[19];
					 document.form1.t20.value=str[20];
					 document.form1.t21.value=str[21];
					 document.form1.t22.value=str[22];
					 document.form1.t23.value=str[23];
					 document.form1.t24.value=str[24];
					 document.form1.t25.value=str[25];
					 document.form1.t26.value=str[26];
					 document.form1.t27.value=str[27];
					 document.form1.t28.value=str[28];
					 document.form1.t29.value=str[29];
					 document.form1.t30.value=str[30];
					 document.form1.t31.value=str[31];
					 document.form1.t32.value=str[32];
					
                    
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
<table width="594" height="338" align="center">
  <tr>
    <td width="584" valign="top"><form id="form1" name="form1" method="post" >
      <table width="588" >
        <tr>
          <td colspan="2" valign="top" bgcolor="#FFFFFF"></td>
          </tr>
        <tr>
          <td colspan="2" bgcolor="#FFFFFF">
            <div align="center"><span class="style4">FIR INFORMATION DETAIL</span>              </div>
          </td>
          </tr>
        <tr>
          <td width="226" bgcolor="#FFFFFF"><div align="right" class="style1"><span class="style5">SELECCT  FIR_ID &gt;&gt;</span>&nbsp;  </div></td>
          <td width="346" bgcolor="#FFFFFF"><%!
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
            </select>&nbsp;</td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><span class="style3">THANA ID :</span></td>
          <td bgcolor="#FFFFFF"><input name="t1" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">FIR ENTRY DATE</td>
          <td bgcolor="#FFFFFF"><input name="t2" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ACT NUMBER </td>
          <td bgcolor="#FFFFFF"><input name="t3" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ROJNAMCHA NUMBER </td>
          <td bgcolor="#FFFFFF"><input name="t4" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIME DATE</td>
          <td bgcolor="#FFFFFF"><input name="t5" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIME DAY</td>
          <td bgcolor="#FFFFFF"><input name="t6" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">RECIEVEING DATE</td>
          <td bgcolor="#FFFFFF"><input name="t7" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIME TIME</td>
          <td bgcolor="#FFFFFF"><input name="t8" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">GET INFORMATION TIME</td>
          <td bgcolor="#FFFFFF"><input name="t9" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">TYPE OF FIR INFORMATION</td>
          <td bgcolor="#FFFFFF"><input name="t10" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIME PLACE</td>
          <td bgcolor="#FFFFFF"><input name="t11" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">BEET NO</td>
          <td bgcolor="#FFFFFF"><input name="t12" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">DIRECTION</td>
          <td bgcolor="#FFFFFF"><input name="t13" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">DISTANCE</td>
          <td bgcolor="#FFFFFF"><input name="t14" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">INFORMER NAME</td>
          <td bgcolor="#FFFFFF"><input name="t15" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">INFORMER FATHER NAME</td>
          <td bgcolor="#FFFFFF"><input name="t16" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">DATE OF BIRTH </td>
          <td bgcolor="#FFFFFF"><input name="t17" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">NATIONALITY</td>
          <td bgcolor="#FFFFFF"><input name="t18" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">PASPORT NO( IF ANY)</td>
          <td bgcolor="#FFFFFF"><input name="t19" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ISSUE DATE</td>
          <td bgcolor="#FFFFFF"><input name="t20" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ISSUE PLACE</td>
          <td bgcolor="#FFFFFF"><input name="t21" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">OCCUPATION</td>
          <td bgcolor="#FFFFFF"><input name="t22" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">INFORMER ADDRESS</td>
          <td bgcolor="#FFFFFF"><input name="t23" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIMINAL NAME</td>
          <td bgcolor="#FFFFFF"><input name="t24" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIMINAL FATHER NAME</td>
          <td bgcolor="#FFFFFF"><input name="t25" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIMINAL ADDRESS</td>
          <td bgcolor="#FFFFFF"><input name="t26" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">CRIMINAL CAST</td>
          <td bgcolor="#FFFFFF"><input name="t27" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">REASION FOR DELAY</td>
          <td bgcolor="#FFFFFF"><input name="t28" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ASSEST PRICE</td>
          <td bgcolor="#FFFFFF"><input name="t29" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">ASSEST DETAIL</td>
          <td bgcolor="#FFFFFF"><input name="t30" type="text" size="40" /></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">FIRSTL INFORMATION DETAIL</td>
          <td bgcolor="#FFFFFF"><input name="t31" type="text" size="40" /></td>
        </tr>
      </table>
        </form>
    </td>
  </tr>
</table>
</body>
</html>
