<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type="text/JavaScript">
<!--
  function valid4()
  {
    a=0;	r="";
			for (i=0; i<=5; i++) {
				if (document.forms[0].elements[i].value == "") {
					a=1;

					r = r + " " + document.forms[0].elements[i].name + ";" ;
				}
				else if ((i > 4)&&(a==0))  {
					alert("All Records are filled in - Thank You !");
                                        return true;
				}
                                
			}
			for (i=0; i<=5; i++) {
				if (document.forms[0].elements[i].value == "") {
					alert("Please fill in the following Records :- " + r);
					document.forms[0].elements[i].focus( );
					return false;
				}
			}
  } 
//-->
</script>
<style type="text/css">
<!--
.style6 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="704" height="386" bgcolor="#FFFFFF">
  <tr>
    <td width="696" height="54" bgcolor="#FFFFFF"><div align="center" class="style6">VehicleCheckDetail</div></td>
  </tr>
  <tr>
    <td height="324">
	<div align="center">
	<form id="form1" name="form1" method="post" action="penalitycollection.jsp" >
	  <table width="696" height="293">
        <tr>
          <td width="127" height="39" align="left" valign="middle"><strong>VehicleNumber:</strong></td>
          <td width="144" align="left" valign="middle">
              <input type="text" name="t1" />
          </td>
          <td width="99" align="left"><strong>VehicleType:</strong></td>
          <td width="150" align="left">
              <select name="menu1">
                <option>TwoWheeler</option>
                <option>ThreeWheeler</option>
                <option>FourWheeler</option>
              </select>
         </td>
          <td width="69" align="left" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="79" align="left">&nbsp;</td>
        </tr>
        <tr>
          <td height="59" align="left" valign="middle"><p><strong>DrivingLicenseNo</strong>.</p></td>
          <td align="left" valign="middle"><div align="center">
              <input type="text" name="t2" />
          </div></td>
          <td align="left"><strong>InsurencePNO</strong></td>
          <td align="left" valign="middle">
              <input type="text" name="t3" />
          </td>
          <td align="left"><p>&nbsp;</p>
              <p>&nbsp;</p></td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td height="49" align="center" valign="middle"><div align="left">
              <input type="checkbox" name="c1" value="nameplate" />
              <strong>NamePlate </strong></div></td>
          <td><div align="left">
              <input type="checkbox" name="c2" value="crossspeedlimlt" />
              <strong> CrossSpeedLimit </strong></div></td>
          <td align="center" valign="middle">&nbsp;</td>
          <td><div align="left">
              <input type="checkbox" name="c3" value="overloading" />
              <strong>OverLoading </strong></div></td>
          <td colspan="2"><div align="left"><strong>
              <input type="checkbox" name="c4" value="noparking" />
            No Parking </strong></div></td>
        </tr>
        <tr>
          <td height="54"><div align="left">
              <input type="checkbox" name="c5" value="signalcross" />
              <strong>SignalCross </strong></div></td>
          <td><div align="center">
              <div align="left">
                <input type="checkbox" name="c6" value="cngkit" />
                <strong> CNGKit </strong> </div>
          </div></td>
          <td>&nbsp;</td>
          <td><div align="center">
              <div align="left">
                <input type="checkbox" name="c7" value="unauthorisedsiron" />
                <strong>UnAuthorisedSiron </strong></div>
          </div></td>
          <td colspan="2"><div align="left">
              <input type="checkbox" name="c8" value="helmet/speedbelt" />
              <strong>Helmet/SpeedBelt</strong></div></td>
        </tr>
        <tr>
          <td height="46"><div align="left"><strong>
              <input type="checkbox" name="c9" value="polutioncard" />
            PolutionCard </strong></div></td>
          <td align="center" valign="middle"><div align="center">
              <div align="left">
                <input type="checkbox" name="c10" value="roadtax" />
                <strong>RoadTax</strong> </div>
          </div></td>
          <td>&nbsp;</td>
          <td><div align="center">
              <div align="left">
                <input type="checkbox" name="c11" value="illigaltime" />
                <strong> IlligalTime </strong></div>
          </div></td>
          <td colspan="2"><div align="left"></div></td>
        </tr>
        <tr>
          <td height="26">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td valign="top"><div align="right">
              <input name="Submit" type="submit" id="Submit" value="next"/>
          </div></td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
	</form>
    </div></td>
  </tr>
</table>
</body>
</html>
