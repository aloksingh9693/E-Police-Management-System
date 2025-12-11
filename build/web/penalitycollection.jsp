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
	font-size: 24px;
	font-style: italic;
	color: #000000;
}
.style2 {color: #CC9966}
.style3 {
	color: #000000;
	font-weight: bold;
}
.style4 {color: #000000; font-size: 24px;}
-->
</style>
</head>

<body>
<table width="500" height="334">
  <tr>
    <th width="490" height="59" colspan="6" bgcolor="#FFFFFF" scope="row"><span class="style1">
  
    <span class="style2">  </span></span><span class="style4"><span class="style2">
    
    <span class="style3">PanalitiesCollection  </span>
    
    </span></span><span class="style1"><span class="style2">   </span>
    </span></th>
  </tr>
  <tr>
    <th height="267" colspan="6" scope="row">
		<div align="center">
                    <form id="form1" name="form1" method="post" action="vehiclechkservlet" onsubmit="return valid3();">
	  <table width="463" height="263" bgcolor="#FFFFFF">
        <tr>
          <th width="170" scope="row"><div align="center">Date :</div></th>
          <td height="40" colspan="2">
              <%-- Start if Calendar controll ----------------------------%>
               <div align="left">
                 <input type="text" name="datum1"/>
                   <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum1');"><img src="calender.png"/></a></div></td>
          <td width="71" rowspan="7" valign="middle"><table id="calenderTable">
              <tbody id="calenderTableHead">
                <tr>
                  <td colspan="4" align="center">

<%String s=request.getParameter("t1");
ServletContext sr1=getServletContext();
sr1.setAttribute("tt1", s);
%>
 <%String s1=request.getParameter("menu1");
ServletContext sr2=getServletContext();
sr2.setAttribute("tt2", s1);
%>
                      <% String s2=request.getParameter("t2");
ServletContext sr3=getServletContext();
sr3.setAttribute("tt3", s2);
%>
                      <% String s3=request.getParameter("t3");
ServletContext sc=getServletContext();
sc.setAttribute("tt4", s3);
String s4=request.getParameter("c1");
String s5=request.getParameter("c2");
String s6=request.getParameter("c3");
String s7=request.getParameter("c4");
String s8=request.getParameter("c5");
String s9=request.getParameter("c6");
String s10=request.getParameter("c7");
String s11=request.getParameter("c8");
String s12=request.getParameter("c9");
String s13=request.getParameter("c10");
String s14=request.getParameter("c11");

        String str = "";
        if (s4 != null) {
            str = str + " / " + s4;
        }
        if (s5 != null) {
            str = str + " / " + s5;
        }

        if (s6 != null) {
            str = str + " / " + s6;
        }
        if (s7 != null) {
            str = str + " / " + s7;
        }
        if (s8 != null) {
            str = str + " / " + s8;
        }
        if (s9 != null) {
            str = str + " / " + s9;
        }
        if (s10 != null) {
            str = str + " / " + s10;
        }
        if (s11 != null) {
            str = str + " / " + s11;
        }
        if (s12 != null) {
            str = str + " / " + s12;
        }
        if (s13 != null) {
            str = str + " / " + s13;
        }
        if (s14 != null) {
            str = str + " / " + s14;
        }

ServletContext sc1=getServletContext();
sc1.setAttribute("tt5", str);

                      %>
                      <select name="select" id="selectMonth" onchange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));">
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
                      </select>                  </td>
                  <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));">
                    </select>                  </td>
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
            </table>              </td>
      <%-- End OF Calendar Controll --------------------------%>
        </tr>
  
  <tr>
    <th height="34" scope="row"><div align="center">OwnerName :</div></th>
    <td colspan="2">
      <div align="left">
        <input type="text" name="t4"/>
        </div></td>
    <td width="10" colspan="3" rowspan="6">&nbsp;</td>
  </tr>
  <tr>
    <th height="28" scope="row">RecieptNo :</th>
    <td colspan="2">
      <div align="left">
        <input type="text" name="trec" />
        </div></td>
    </tr>
  <tr>
    <th height="25" scope="row">Penality :</th>
    <td width="174">
       <div align="left">
         <input type="text" name="tpna" />
       </div></td>
    <td width="23" background="image/rp.JPG">&nbsp;</td>
  </tr>
  <tr>
    <th height="52" scope="row">PermanentAddress:</th>
    <td colspan="2">
      <div align="left">
        <textarea name="tadd"></textarea>
        </div></td>
    </tr>
  <tr>
    <th scope="row">OfficerID : </th>
    <td colspan="2">
      <div align="left">
        <input type="text" name="toffid" />
      </div></td>
    </tr>
  <tr>
    <th height="26" scope="row">&nbsp;</th>
    <td colspan="2">
      
          <div align="right">
            <input type="submit" name="Submit" value="Submit" />
            </div></td>
  </tr>
      </table>
	</form></div></th>
  </tr>
</table>
</body>
</html>
