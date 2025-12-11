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
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #003333;
}
.style4 {color: #000000}
.style5 {font-size: 24px}
-->
</style>
<script>

</script>
</head>

<body>
<form id="form1" name="form1" method="post" action="carmtainServlet" onsubmit="return velid1();">
<table width="663" height="342">
  <tr>
    <th height="44" scope="col">
      
      <span class="style4">
      
      <span class="style5">CarMaintenanceDeatail    </span>
      
      </span>       </th>
    </tr>
  <tr>
    <td height="290"><table width="648" height="236" align="center" bgcolor="#FFFFFF">
      <tr>
        <th width="99" height="43" valign="top" scope="col"><strong>Date:</strong></th>
		
      <td width="188" height="43" valign="middle">
            
              <div align="center">
               
                <p>
                  <input type="text" name="datum1"/>
                  <a href="#" onClick="setYears(1947, 2050);
       showCalender(this, 'datum1');">
                  <img src="calender.png"/></a>              </p>
              </div>
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
    </table>
      
      <th width="109" height="43" align="center" valign="top" scope="col">DriverName :          </th>
        <th width="158" height="43" align="left" valign="top" scope="col"><input type="text" name="t1" /></th>
        <th height="43" colspan="2" scope="col">&nbsp;</th>
        </tr>
      <tr>
        <td height="37"><div align="center"><strong>RepairDetail : </strong></div></td>
        <td><div align="center">
          <textarea name="t2"></textarea>
        </div></td>
        <td align="center" valign="middle"><div align="center"><strong>VehicleNumber:</strong></div></td>
        <td align="center" valign="middle"><div align="center">
   
            <input type="text" name="t3" />

          </div></td>
        <td width="27">&nbsp;</td>
        <td width="39">&nbsp;</td>
      </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="24"><div align="center"><strong>ThanaId:</strong></div></td>
        <td><div align="center">
          <label>
          <input type="text" name="t4" />
          </label>
        </div></td>
        <td><strong>ServiceCharge : </strong></td>
        <td><input type="text" name="t5" /></td>
        <td background="image/rp.JPG">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="27">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td><td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="38">&nbsp;</td>
        <td>&nbsp;</td>
        <td><input name="Submit" type="submit" value="Submit" /></td>
       
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
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
