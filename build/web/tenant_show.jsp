<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style5 {
	font-size: 12px;
	font-weight: bold;
	color: #000000;
	font-family: "Times New Roman", Times, serif;
}
.style8 {color: #333333}
-->
</style>

 <script type="text/JavaScript">
            <!--
            function show(std_value)
            {
                if(std_value!="-1")
                {
                    xmlHttp=GetXmlHttpObject()
                    if (xmlHttp==null)
                    {
                        alert ("Browser does not support HTTP Request")
                        // return
                    }
                    var url="tenant_show_related.jsp"
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
					 document.form1.t28.value=str[27];
					 document.form1.t29.value=str[28];
					 document.form1.t30.value=str[29];
					 document.form1.t31.value=str[30];
					 document.form1.t32.value=str[31];
                     document.form1.t33.value=str[32];
					 document.form1.t34.value=str[33];
					 document.form1.t35.value=str[34];
					 document.form1.t36.value=str[35];
					 document.form1.t37.value=str[36];
					 document.form1.t38.value=str[37];
					 document.form1.t39.value=str[38];
					 document.form1.t40.value=str[39];
					 document.form1.t41.value=str[40];
					 
					  document.form1.t42.value=str[41];
					 document.form1.t43.value=str[42];
					 document.form1.t44.value=str[43];
					 document.form1.t45.value=str[44];
					 document.form1.t46.value=str[45];
					 document.form1.t47.value=str[46];
					 document.form1.t48.value=str[47];
					 document.form1.t49.value=str[48];
					 document.form1.t50.value=str[49];
					 document.form1.t51.value=str[50];
                 
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
<table width="486" height="960" align="center">
  <tr>
    <td height="954" valign="top"><form action="" method="post" name="form1" class="style5" id="form1">
        
        
        <div align="justify">
          <table width="476">
            <tr>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td width="213" bgcolor="#FFFFFF"><div align="right" class="style8">TENANT ID: </div></td>
              <td width="247" bgcolor="#FFFFFF"><%!
                                                      PreparedStatement pst = null;
                                                      Connection con = null;
                                        ResultSet rs = null;


                                    %>
                <select name="menu1" onchange="show(this.value);">
                  <option value="-1">select</option>
                  <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select * from TENENT_DTL ");

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
              <td bgcolor="#FFFFFF">TNT_ID</td>
              <td bgcolor="#FFFFFF"><input name="t1" type="text" size="24" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">PS_ID</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t2" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OWNER_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t3" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OWNER_FNAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t4" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OWNER_DOB</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t5" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OWNER_CONT</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t6" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OWNER_PADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t7" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">TNT_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t8" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">TNT_FNAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t9" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">TNT_DOB</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t10" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">TNT_CONT</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t11" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">TNT_PADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t12" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">P_LANDLORD_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t13" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">P_LANDLORD_ADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t14" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">BY_W_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t15" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">BY_W_ADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t16" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">ANY_ID</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t17" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">DESIGNATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t18" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">OFFICE_ADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t19" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">MONTHLY_INCOME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t20" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">VIHI_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t21" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">VIHI_REG_NO</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t22" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">DATE_SINCE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t23" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">CIME_HISTORY</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t24" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">EMP_ID</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t25" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">RELATIVE NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t26" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">REL_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t27" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">ADD1</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t28" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">RELATIVE NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t29" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">REL_NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t30" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">ADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t31" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">RELATIVE NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t32" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">RELATION NAME</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t33" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">ADD</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t34" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">1 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t35" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">1 RELATION </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t36" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">1 AGE  </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t37" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">1 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t38" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">2 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t39" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">2 RELATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t40" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF"> 2 AGE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t41" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">2 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t42" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">3 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t44" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">3 RELATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t45" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">3 AGE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t46" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">3 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t47" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">4 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t48" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">4 RELATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t49" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">4 AGE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t50" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">4 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t51" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">5 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t52" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">5 RELATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t53" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">5 AGE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t54" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">5 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t55" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">6 FAMILY MEMBER NAME </td>
              <td bgcolor="#FFFFFF"><input type="text" name="t56" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">6 RELATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t57" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">6 AGE</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t58" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFFFF">6 OCCUPATION</td>
              <td bgcolor="#FFFFFF"><input type="text" name="t59" /></td>
            </tr>
          </table>
        </div>
    </form></td>
  </tr>
</table>
</body>
</html>
