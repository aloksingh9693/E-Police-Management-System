<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
                    var url="case_getuser1.jsp"
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
                   
                    document.form1.t1.value=str[0];
                     document.form1.t2.value=str[1];
                     document.form1.t3.value=str[2];
                     document.form1.t4.value=str[3];
                     document.form1.t5.value=str[4];
                     document.form1.t6.value=str[5];
                     document.form1.t7.value=str[6];
                    
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
 <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
 </style>
</head>

<body >
<table width="595" >
  <tr>
    <td width="587" height="43" align="center" valign="middle" ><span class="style1">CASE DETAIL </span>
    </table>
<table width="599"   onLoad="set(this.form)"><form name="form1" id="form1" method="post" action="insert_case">
 
  <tr>
    <td width="163" height="32" bgcolor="#FFFFFF"><div align="right"><span class="style6">FIR_ ID</span></div></td>
    <td width="424" bgcolor="#FFFFFF">
	                                <%!
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
  <tr>
    <td height="24" bgcolor="#FFFFFF"><div align="right"><span class="style6"> Officer (EMP_ID) </span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;
      <select name="menu2">
                                        <option value="-1">select</option>
                                        <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select * from EMP_INFO");

                                                        rs = pst.executeQuery();
                                                        while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                                        <%
                                                        }
                                                    } catch (Exception e) {
                                                        out.print(e);
                                                    } finally {
                                                    }%>
      </select>    </td>
  </tr>
  <tr>
    <td height="54" bgcolor="#FFFFFF"><div align="right"><span class="style6">Current Status: </span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;
    <textarea name="ASSEST_DETAIL"></textarea></td>
  </tr>
  <tr>
    <td height="48" bgcolor="#FFFFFF"><div align="right"><span class="style6">Final Report: </span></div></td>
    <td bgcolor="#FFFFFF">&nbsp;
    <textarea name="FINALREPORT"></textarea></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#FFFFFF"><table width="581" >
      <tr>
        <td width="262" align="right"><INPUT Name="act" Type="Submit" Value="Submit">&nbsp;</td>
        <td width="303"><input type="reset" value="Reset" name="Submit" /></td>
      </tr>
    </table></td>
  </tr>
  </form>
</table>

</body>
</html>
