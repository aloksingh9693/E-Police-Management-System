<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
            <link href="calendar.css" rel="stylesheet" type="text/css">
<script type="text/JavaScript">
 function addOption(selectbox,text,value )
                    {
                        var optn = document.createElement("OPTION");
                        optn.text = text;
                        optn.value = value;
                        selectbox.options.add(optn);
                    }
             

                     function showStud1(std_value)
                    {
                       if(std_value!="-1")
                        {
                            xmlHttp=GetXmlHttpObject()
                            if (xmlHttp==null)
                            {
                                alert ("Browser does not support HTTP Request")
                                // return
                            }
                            var url="newjspgetuser.jsp"
                            url=url+"?std_id="+std_value
                            xmlHttp.onreadystatechange=stateChanged1
                            xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
                        }
                        else
                        {
                            alert("Please Select a Student Code 1 st");
                            return
                        }
                    }

                    function stateChanged1()
                    {
                        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                        {
                            var showdata = xmlHttp.responseText;
                            var strar = showdata.split(":");

                            if(strar.length==1)
                            {
                                document.getElementById("std_id").focus();
                                alert("Please Select a Student Code 2 nd");
                            }
                            else if(strar.length>1)
                            {
                              document.form1.THANA.options.length=0;

                                for (var i=0; i < strar.length;++i){

                                    var str=strar[i].split("*");

                                    addOption(document.form1.THANA, str[1], str[0]);
                                }
                            }
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

</script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style3 {font-size: 14px}
-->
</style>
</head>

<body>
<table width="685" height="859" bordercolor="#999999" bgcolor="#CCCCCC" >  
  <form id="form1" name="form1" method="post" action="fir_ins">
  <tr>
    <td height="32" colspan="6" valign="top" bordercolor="#333333" bgcolor="#FFFFFF">
	  <div align="center" class="style1">FORM NO.1 </div>
    <tr>
    <td colspan="5" bordercolor="#333333" bgcolor="#FFFFFF"><div align="center"><strong>
      <span class="style3">
      <marquee  align="left" bgcolor="#FF0000">
       FIRST INFORMATION REPORT( UNDER SEC.154 C.R.P.C.)
      </marquee>
      </span>      </strong></div></td>
    </tr>
  <tr>
    <td width="124" bordercolor="#333333" bgcolor="#FFFFFF"><strong>District :</strong></td>
    <td width="168" bordercolor="#333333" bgcolor="#FFFFFF">
	
	
	<%!                  Connection cn = null;
                         PreparedStatement pst = null;
                         ResultSet rs = null;
    %>
	
	
	<select name="DISTRICT" onchange="showStud1(this.value)">
      <option value="-1">select</option>
      <%
                                                                    try {
                                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                                        String url = "jdbc:oracle:thin:@localhost:1521:XE";
                                                                        cn = DriverManager.getConnection(url, "scott", "tiger");
                                                                        pst = cn.prepareStatement("select * from district");
                                                                        rs = pst.executeQuery();
                                                                        while (rs.next()) {
      %>
      <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
      <%
                                                                        }
                                                                    } catch (Exception e) {
                                                                    }
                                                        %>
    </select></td>
    <td width="150" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Thana </strong>:</td>
    <td colspan="2" bordercolor="#333333" bgcolor="#FFFFFF"><select name="THANA" >
      <option>select</option>
      </select></td>
  </tr>
  <tr>
    <td height="26" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Act :</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="ACT" size="27" /></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Dat</strong>e:</td>
    <td colspan="2" valign="top" bordercolor="#333333" bgcolor="#FFFFFF">
	<input type="text" name="ENTRY_DATE" size="12" />
                                               <a href="#" onclick="setYears(1947, 2008);
                  showCalender(this, 'ENTRY_DATE');"> <img src="calender.png" /></a>
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
                                                                </select>                    </td>
                                                                                                   <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                        document.getElementById('selectMonth').selectedIndex, false));">
                                                                </select>                    </td>
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
      </table>	 </td>
  </tr>
  <tr>
    <td height="40" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Type of Information:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="TYPE_INFO" size="27" />
    </strong></td>
    <td colspan="3" rowspan="5" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td bordercolor="#333333"><strong>Crime Place:</strong></td>
    <td bordercolor="#333333"><input type="text" name="CRIME_PLACE" size="27" /></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td height="24" bordercolor="#333333"><strong>BEET No:</strong></td>
    <td bordercolor="#333333"><strong>
      <input type="text" name="BEETNO" size="27" />
    </strong></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td bordercolor="#333333"><strong>Direction:</strong></td>
    <td bordercolor="#333333"><input type="text" name="DIRECTION" size="27" /></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td height="24" bordercolor="#333333"><strong>Distance:</strong></td>
    <td bordercolor="#333333"><strong>
      <input type="text" name="DISTANCE" size="27" />
    </strong></td>
    </tr>
  <tr>
    <td rowspan="3" valign="top" bordercolor="#333333" bgcolor="#FFFFFF"><strong>RojNamchaDetail :</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>RojNamcha No:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="RJ_NO" size="25" /></td>
    <td width="84" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Crime Date:</strong></td>
    <td width="135" bordercolor="#333333" bgcolor="#FFFFFF"><strong>
	<input type="text" name="CRIME_DATE" size="10" />
                                               <a href="#" onclick="setYears(1947, 2008);
                  showCalender(this, 'CRIME_DATE');"> <img src="calender.png" /></a>
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
                                                                </select>                    </td>
                                                                                                   <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                        document.getElementById('selectMonth').selectedIndex, false));">
                                                                </select>                    </td>
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
	 
      </a></strong></td>
  </tr>
  <tr>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Day of Crime:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><select name="CRIME_DAY" >
      <option>Monday</option>
      <option>Tuesday</option>
      <option>Wednesday</option>
      <option>Thursday</option>
      <option>Friday</option>
      <option>Saturday</option>
      <option>Sunday</option>
    </select></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>ReciveDate </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="RECIEVE_DATE" size="10" />
                                               <a href="#" onclick="setYears(1947, 2008);
                  showCalender(this, 'RECIEVE_DATE');"> <img src="calender.png" /></a>
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
                                                                </select>                    </td>
                                                                                                   <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                        document.getElementById('selectMonth').selectedIndex, false));">
                                                                </select>                    </td>
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
	 </a></td>
  </tr>
  <tr>
    <td height="43" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Time of Crime:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="CRIME_TIME" size="25" /></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Time of Informed:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="GETINFO_TIME" size="22" />
    </strong></td>
  </tr>
  <tr>
    <td rowspan="5" valign="top" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Informer Details</strong> <strong>:</strong></td>
    <td height="43" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Informer  Name:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="INFORMER_NAME" size="25" />
    </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Father Name:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="INFORMER_FNAME" size="22" />
    </strong></td>
  </tr>
  <tr>
    <td height="24" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Date of Birth:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="DOB" size="10" />
                                               <a href="#" onclick="setYears(1947, 2008);
                  showCalender(this, 'DOB');"> <img src="calender.png" /></a>
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
                                                                </select>                    </td>
                                                                                                   <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                        document.getElementById('selectMonth').selectedIndex, false));">
                                                                </select>                    </td>
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
	 </a></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Nationality: </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Pasport:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="PASPORTNO" size="25" /></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Issue Date : </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input type="text" name="ISSUE_DATE" size="10" />
                                               <a href="#" onclick="setYears(1947, 2008);
                  showCalender(this, 'ISSUE_DATE');"> <img src="calender.png" /></a>
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
                                                                </select>                    </td>
                                                                                                   <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                        document.getElementById('selectMonth').selectedIndex, false));">
                                                                </select>                    </td>
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
	 </a></td>
  </tr>
  <tr>
    <td height="43" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Issue Place:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="ISSUE_PLACE" size="25" />
    </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Occupation:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="OCCUPATION" size="22" />
    </strong></td>
  </tr>
  <tr>
    <td height="24" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Address:</strong></td>
    <td colspan="3" bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="INFORMER_ADDRESS" size="25" />
    </strong></td>
  </tr>
  <tr>
    <td rowspan="3" valign="top" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Known\Unknown</strong><strong>Criminal Details </strong></td>
    <td height="43" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Criminal Name : </strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="CRIMINAL_NAME" size="25" />
    </strong></td>
    <td valign="middle" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Cast :</strong></td>
    <td valign="middle" bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="CRIMINAL_CAST" size="22" />
    </strong></td>
  </tr>
  <tr>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Address:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="CRIMINAL_ADDRESS" size="25" />
    </strong></td>
    <td colspan="2" rowspan="2" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  <tr>
    <td height="24" bordercolor="#333333" bgcolor="#FFFFFF"><strong>Father Name:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>
      <input type="text" name="CRIMINAL_FNAME" size="25" />
    </strong></td>
    </tr>
  <tr>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><strong>Reasion for Delay Information:</strong></td>
    <td bordercolor="#333333" bgcolor="#FFFFFF"><input name="REASION_DELAY" type="text" size="27" /></td>
    <td colspan="3" rowspan="4" bordercolor="#333333" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td bordercolor="#333333"><strong>Stolen Assets Price:</strong></td>
    <td bordercolor="#333333"><input name="ASSEST_PRICE" type="text" size="27" /></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td bordercolor="#333333"><strong>Stolen Assets Detail: .</strong></td>
    <td bordercolor="#333333"><textarea name="ASSEST_DETAIL"></textarea></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td height="40" bordercolor="#333333"><strong>First investigation </strong><strong>inormation Detail:</strong></td>
    <td bordercolor="#333333"><textarea name="Detaie of at Firsly recieved Information"></textarea></td>
    </tr>
  <tr>
    <td height="26" colspan="5" bordercolor="#333333" bgcolor="#FFFFFF"><div align="center">
      <input name="act3" onclick="verifyData( )" type="submit"value="Submit" />
      <input type="reset" value="Reset" name="Submit" />
    </div></td>
  </form>
  <td height="2"></tr>
</table>
</body>
</html>
