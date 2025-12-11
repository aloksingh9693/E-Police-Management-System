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
function hide()
{
document.getElementById(b1).style.visibility = "hidden";
}

</script>
   <embed src="musicfile.wav" autostart="true" loop="false">
</head>

<body>
<form id="form1" name="form1" method="post" action="carmtainServlet" onsubmit="return velid1();">
<table >
      <tr>
        <td >
            <!--------------------------------------->
              <div align="center">

                <p>
                  <input type="text" name="datum1"/>
                  <a href="#" onClick="setYears(1947, 2008);
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
    </table></td>
      <!-----------------------------------end ------------------------------------>
      </tr>
    </table>

<table>
    <tr>
        <td>
            <input type="button" value="in"  name="b1" onclick="hide()"/>
            <input type="button" value="out"  name="b2"/>

        </td>

    </tr>
</table>
</form>
</body>
</html>
