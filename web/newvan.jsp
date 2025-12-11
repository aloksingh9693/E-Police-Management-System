<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html;"/>
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
<script type="text/JavaScript">
<!--

//-->
</script>
</head>

<body>
<table width="641" height="268">
  <tr>
    <td height="262" colspan="6"><form id="form1" name="form1" method="post" action="newvanservlet" onsubmit="return valid3();">
      <table width="632" height="226" >
        <tr>
          <td height="44" colspan="4"><div align="center"><strong>NewVehicleDetail</strong></div></td>
          <td width="15">&nbsp;</td>
          <td width="14">&nbsp;</td>
        </tr>
        <tr>
          <td width="104" height="30"><strong>InchargeName:</strong></td>
          <td width="180"><label>
            <input type="text" name="t1" />
          </label></td>
          <td width="109"><strong>ThanaId:</strong></td>
          <td width="182"><label>
            <input type="text" name="t2" />
          </label></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="32"><strong>VehicleType:</strong></td>
          <td><label>
            <select name="menu1" >
              <option >TwoWheeler</option>
			  <option >FourWheeler</option>
            </select>
			
          </label></td>
          <td><strong>VehicleNumber:</strong></td>
          <td><label>
            <input type="text" name="t3" />
          </label></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="33"><strong>ModelNumber:</strong></td>
          <td><label>
            <input type="text" name="t4" />
          </label></td>
          <td><strong>Date : </strong></td>
          <td><label><a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum1');">
          <input type="text" name="datum1"/>
          <img src="calender.png"/></a></label></td>
		  <table id="calenderTable">
                          <tbody id="calenderTableHead">
                            <tr>
                              <td colspan="4" align="center"><select name="select" id="selectMonth" onchange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));">
                                  <option value="0">Jan</option>
                                  <option value="1">Feb</option>
                                  <option value="2">Mar</option>
                                  <option value="3">Apr</option>
                                  <option value="4">May</option>
                                  <option value="5">Jun</option>
                                  <option value="6">Jul</option>
                                  <option value="7">Aug</option>
                                  <option value="8">Sep</option>
                                  <option value="9">Oct</option>
                                  <option value="10">Nov</option>
                                  <option value="11">Dec</option>
                                </select>                              </td>
                              <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));">
                                </select>                              </td>
                              <td align="center"><a href="#" onclick="closeCalender();"><font color="#003333" size="+1">X</font></a> </td>
                            </tr>
                          </tbody>
                          <tbody id="calenderTableDays">
                            <tr style="">
                              <td>Sun</td>
                              <td>Mon</td>
                              <td>Tue</td>
                              <td>Wed</td>
                              <td>Thu</td>
                              <td>Fri</td>
                              <td>Sat</td>
                            </tr>
                          </tbody>
                          <tbody id="calender">
                          </tbody>
                        </table>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50">&nbsp;</td>
		  
        
          
          <td valign="bottom"><input type="submit" name="Submit" value="Submit" /></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="21">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
        </form>
        
    </td>
  </tr>
</table>
</body>
</html>
