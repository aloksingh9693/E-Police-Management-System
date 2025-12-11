<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html;"/>
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
<!--
.style2 {font-weight: bold; color: #333333; font-size: 24px;}
-->
</style>
<script type="text/JavaScript">
<!--

//-->
</script>
</head>

<body>
<table width="650" height="286">
  <tr>
    <td width="642" height="60" bgcolor="#FFFFFF"><div align="center" class="style2">
      Stolen Vehicle Detail 
   </div></td>
  </tr>
  	
  <tr>
  
    <td height="218">
	<form id="form1" name="form1" method="post" action="stolenservlet" onsubmit="return valid5();">
	<table width="641" height="233" >
      <tr>
        <td width="107" height="29"><strong>OwnerName : </strong></td>
        <td width="187">
          <input type="text" name="t7" />
        </td>
        <td width="114" align="center" valign="middle"><strong>VehicleNumber:</strong></td>
        <td width="187" align="left" valign="middle"><input type="text" name="t2" /></td>
        <td width="14">&nbsp;</td>
        <td width="10">&nbsp;</td>
      </tr>
      <tr>
        <td height="27" align="center" valign="middle"><div align="left"><strong>VehicleType:          </strong></div></td>
        <td align="left" valign="middle"><select name="menu1" >
          <option>TwoWheeler</option>
          <option>ThreeWheeler</option>
          <option>FourWheeler</option>
          <option>SixWheeler</option>
          <option>TenWheeler</option>
          <option>other</option>
     
          </select></td>
        <td><strong>EngineNumber : </strong></td>
        <td>
          <input type="text" name="t3" />
       </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="26"><strong>ChasisNumber:</strong></td>
        <td align="left">
          <input type="text" name="t4" />
        </td>
        <td><div align="center"><strong>ModelNumber : </strong></div></td>
        <td>
          <input type="text" name="t5" />
       </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30"><strong>VehicleColor : </strong></td>
        <td>
          <select name="menu2" >
         
                 <option>Color</option>
                 <option>Silver</option>
                 <option>Black</option>
                 <option>Yellow</option>
                 <option>Blue</option>
                 <option>Gray</option>
                 <option>White</option>
                 <option>Red</option>
                 <option>Gold</option>
                 <option>Brown</option>
          </select>
        </td>
        <td><strong>DateOfStolen : </strong></td>
     
      
		 <td valign="middle">
            
              
                <input type="text" name="datum1"/>
                <a href="#" onClick="setYears(1947, 2008);
       showCalender(this, 'datum1');">
                <img src="calender.png"/></a>            
            <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center">
	          <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1" selected="selected">Feb</option>
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
	          </select>            </td>
            <td colspan="2" align="center">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
				</select>			</td>
            <td align="center">
			    <a href="#" onClick="closeCalender();"><font color="#003333" size="+1">X</font></a>			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>       </tr>
      <tr>
        <td height="24"><strong>PlaceOfStolen : </strong></td>
        <td>
          <input type="text" name="t6" />
       </td>
        <td><strong>ContactNumber :</strong></td>
        <td>
          <input type="text" name="t10" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><strong>GoodsDetail:</strong></td>
        <td height="37">
          <textarea name="t8"></textarea>
        </td>
        <td bgcolor="#FFFFFF"><strong>Address : </strong></td>
        <td bgcolor="#FFFFFF">
          <textarea name="t9"></textarea>        </td>
        <td rowspan="2">&nbsp;</td>
        <td rowspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td height="26">&nbsp;</td>
        <td>&nbsp;</td>
        <td bgcolor="#FFFFFF">&nbsp;</td>
        <td bgcolor="#FFFFFF"><input type="submit" name="Submit" value="Submit" /></td>
      </tr>
    </table>
   </form>
    </td>
  </tr>
</table>
</body>
</html>
