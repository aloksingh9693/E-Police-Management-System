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
        var url="stolenusergetuser.jsp"
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
       var str = showdata.split("*");
         //document.getElementById("a1").innerText=str[0];
       document.form1.t1.value=str[0];
       document.form1.t2.value=str[1];
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

<body>
<table width="596" height="351" >
<form id="form1" name="form1" method="post" action="">
  <tr>
    <td width="588" height="345" colspan="6">
	
	<table width="588" height="343" >
      <tr>
        <td height="50" colspan="6" align="center" valign="middle"><span class="style1">Stolen Show </span></td>
        </tr>
      <tr>
        <td height="57" colspan="3" align="left" valign="top"><strong>Select StolenCarId: </strong>
          
            <%!
		 PreparedStatement pst=null;
			 Connection con=null;
		  ResultSet rs=null;
		%>
            <select name="menu1" onchange="showStud(this.value);">
              <option value="-1">select</option>
              <%
			
		    try {
           Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("Select stolenid from stolencar");
            rs=pst.executeQuery();
		while(rs.next())
		{
		%>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
              <%	}
                  }
        catch(Exception e)
        {
            out.print(e);
        }finally {
            
        }
     
		  %>
            </select>
          </div></td>
        <td width="123">&nbsp;</td>
        <td width="157">&nbsp;</td>
        <td width="1">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="top"><strong>VehicleNumber :</strong></td>
        <td width="147" height="33" valign="top"><input type="text" name="t1" /></td>
        <td align="left" valign="top" bgcolor="#FFFFFF"><label><strong>VehicleType:</strong></label></td>
        <td valign="top"><input type="text" name="t2" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="top"><strong>EngineNumber : </strong></td>
        <td height="27" align="left" valign="top"><input type="text" name="t3" /></td>
        <td align="left" valign="baseline" bgcolor="#FFFFFF">
          <p><strong>ChasisNumber : </strong></p>
         </td>
        <td valign="top"><input type="text" name="t4" />
&nbsp;
</td>
        
      </tr>
      <tr>
        <td colspan="2" align="center" valign="top"><strong>ModelNumber:</strong></td>
        <td height="31" valign="top"><input type="text" name="t5" /></td>
        <td align="left" valign="top" bgcolor="#FFFFFF"><label></label>
          <label><strong>VehicleColor: </strong><br />
          </label></td>
        <td><label>
          <input type="text" name="t6" />
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="131" height="27" align="center" valign="top"><strong> DateOfStolen:</strong></td>
        <td width="1">&nbsp;</td>
        <td valign="top"><label>
          <input type="text" name="t7" />
        </label></td>
        <td align="left" valign="middle" bgcolor="#FFFFFF"><p><strong>PlaceOfStolen: </strong></p>
          </td>
        <td valign="top"><label>
          <input type="text" name="t8" />
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30" align="center" valign="top"><strong>OwnerName : </strong></td>
        <td>&nbsp;</td>
        <td valign="top"><input type="text" name="t9" /></td>
        <td bgcolor="#FFFFFF"><p>
          <label></label>
          <strong>ContactNumber:</strong></p>
         </td>
        <td valign="top"><input type="text" name="t12" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="59" align="center" valign="top"><strong>Goods:</strong></td>
        <td>&nbsp;</td>
        <td valign="top"><input type="text" name="t10" /></td>
        <td bgcolor="#FFFFFF"><p>
          <label></label>
          <strong>OwnerAddress : </strong></p>
          <p>&nbsp;</p></td>
        <td valign="top"><label>
          <input type="text" name="t11" />
        </label></td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
	
  </tr>
  </form>
</table>
</body>
</html>
