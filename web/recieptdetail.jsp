<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
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
        var url="reciptdetailgetuser.jsp"
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
        // document.getElementById("a1").innerText=str[0];
       document.form1.t3.value=str[0];
       document.form1.t4.value=str[1];
       document.form1.t10.value=str[2];
       document.form1.t5.value=str[3];
       document.form1.t1.value=str[4];
       document.form1.t9.value=str[5];
       document.form1.t7.value=str[6];
       document.form1.t6.value=str[7];
       document.form1.t8.value=str[8];
       document.form1.t2.value=str[9];
       //document.form1.t11.value=str[10];
       // document.form1.t12.value=str[11];


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
<table width="654" height="304" border="1">
  <tr>
    <td width="644"><form id="form1" name="form1" method="post" action="">
      <table width="642" height="301">
        <tr>
          <td height="53" colspan="5"><div align="center" class="style1">Reciept Detail</div></td>
          </tr>
        <tr>
          <td width="142"><strong>RecieptNumber : </strong></td>
          <td width="148">
            <div align="left">
             
                <select name="menu1" onchange="showStud(this.value);" >
                    <option value="-1">select</option>
                     <%! PreparedStatement pst=null;
		       Connection con=null;
			   ResultSet rs=null;
			   %>
                <%

		    try {
           Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("Select recpno from vehiclechk");
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
            </div></td><td colspan="2"><strong>DrivingLicenseNumber: </strong></td>
          <td width="158"><label>
            <input type="text" name="t10" />
          </label></td>
          </tr>
        <tr>
          <td height="43"><strong>OwnerName : </strong></td>
          <td><label>
            <input type="text" name="t1" />
          </label></td>
          <td colspan="2"><strong>InsurencePolicyNumber :  </strong></td>
          <td><label>
            <input type="text" name="t5" />
          </label></td>
          </tr>
        <tr>
          <td height="24"><strong>OfficerName : </strong></td>
          <td><label>
            <input type="text" name="t2" />
          </label></td>
          <td width="141"><strong>Panality : </strong></td>
          <td width="29" background="image/rp.JPG">&nbsp;</td>
          <td><label>
            <input type="text" name="t6" />
          </label></td>
          </tr>
        <tr>
          <td height="30"><strong>VehicleNumber : </strong></td>
          <td><label>
            <input type="text" name="t3" />
          </label></td>
          <td colspan="2"><strong>Date : </strong></td>
          <td><label>
            <input type="text" name="t7" />
          </label></td>
          </tr>
        <tr>
          <td><strong>VehicleType : </strong></td>
          <td><label>
            <input type="text" name="t4" />
          </label></td>
          <td colspan="2"><strong>PermanentAddress : </strong></td>
          <td><label>
            <input type="text" name="t8" />
          </label></td>
          </tr>
        <tr>
          <td><strong>ListOfAgainstRule : </strong></td>
          <td colspan="4"><label>
            <input name="t9" type="text" size="80" maxlength="150" />
          </label></td>
          </tr>
      </table>
        </form>
    </td>
  </tr>
</table>
</body>
</html>
