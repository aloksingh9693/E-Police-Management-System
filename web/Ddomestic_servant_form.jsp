<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html;">
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css">
<script type="text/JavaScript">
<!--



function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: smaller;
	font-weight: bold;
}
.style4 {
	color: #333333;
	font-weight: bold;
	font-size: 24px;
}
-->
</style>
</head>

<body >
<table width="846">
  <tr>
    <td width="836" height="38" align="center" valign="top" bgcolor="#FFFFFF"><p class="style4">VERIFICATION FORM FOR DOMESTIC   SERVANT/EMPLOYEE</p>    </td>
  </tr>
  
  <tr>
    <td><form id="form1" name="form1" method="post" action="servant_info"  >
      <table width="836" border="0">
        <tr>
          <td width="202" align="right"><strong>Police Station ID: </strong></td>
          <td width="624"><label>
            <input name="txt_id" type="text" />
          </label></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong> Name:</strong></div></td>
          <td><input name="txt_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Nick Name: </strong></div></td>
          <td><input name="txt_nic_name" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td width="202" valign="middle"><div align="right"><strong>Father Name: </strong></div></td>
          <td><input name="txt_fname" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td width="202" height="26" valign="middle"><div align="right"><strong> Mother Name: </strong></div></td>
          <td><input name="txt_mname" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Sex:</strong></div></td>
          <td><label>
            <select name="menu2" >
              <option>Sex</option>
              <option>Male</option>
              <option>Female</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Cast:</strong></div></td>
          <td><input name="txt_cast" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Date Of Birth: </strong></div></td>
          <td><label>
            <input type="text" name="datum1" />
            <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum1');"> <img src="calender.png" width="15" height="15" /></a> </label>
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
            </table></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Language Spoken : </strong></div></td>
          <td><input name="txt_lng_spk" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td height="48" rowspan="2" align="center" valign="middle"><div align="right"><strong> Permanent Address:</strong></div></td>
          <td height="24" align="left" valign="top"><p>
              <input name="txt_p_add" type="text" size="80" maxlength="50" />
          </p></td>
        </tr>
        <tr>
          <td align="left" valign="top"><em>home no,street,near,city,state</em> </td>
        </tr>
        <tr>
          <td width="202" height="48" rowspan="2" align="center" valign="middle"><div align="right"><strong>Local Address:</strong></div></td>
          <td align="left" valign="top"><p>
            <input name="txt_l_add" type="text" size="80" maxlength="50" />
          </p>            </td>
        </tr>
        <tr>
          <td align="left" valign="top"><em>home no,street,near,city,state</em> </td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong> Name of Sarpanch:</strong></div></td>
          <td><input name="txt_panch" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="48" rowspan="2" align="center" valign="middle"><div align="right"><strong>Address of sarpanch </strong></div></td>
          <td align="left" valign="top"><p>
              <input name="txt_panch_add" type="text" size="80" maxlength="50" />
          </p></td>
        </tr>
        <tr>
          <td align="left" valign="top"><em>home no,street,near,city,state</em> </td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Contact  No If Any: </strong></div></td>
          <td><input name="txt_cno" type="text" maxlength="10" /></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>Particulars/details of Ration card/Driving   Licence/I..Card if any NO. : </strong></div></td>
          <td><input name="txt_any_id" type="text" maxlength="10" /></td>
        </tr>
        <tr>
          <td width="202" height="109"><div align="right"><strong>Name and Address of friends/relatives and other   associated:</strong></div></td>
          <td><table width="442" border="0">
              <tr>
                <td width="150"><div align="center"><strong>Name</strong></div></td>
                <td width="135"><div align="center"><strong>Relation</strong></div></td>
                <td width="135"><div align="center"><strong>Address</strong></div></td>
              </tr>
            </table>
              <p>
                <label></label>
                <input type="text" name="rel_name1" />
                <input type="text" name="rel1" />
                <input name="rel_add1" type="text" size="45" />
              </p>
            <p>
                <label></label>
                <input type="text" name="rel_name2" />
                <input type="text" name="rel2" />
                <input name="rel_add2" type="text" size="45" /><label></label>
                <label></label>
                <label></label>
            </p>            </td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong> Name of previous employers:</strong></div></td>
          <td><input name="pr_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="48" rowspan="2" align="center" valign="middle"><div align="right"><strong>Address of previous employers: </strong></div></td>
          <td align="left" valign="top"><p>
              <input name="pr_add" type="text" size="80" maxlength="50" />
          </p></td>
        </tr>
        <tr>
          <td align="left" valign="top"><em>home no,street,near,city,state</em> </td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong>By Whom Introduced To The Employer, Name :</strong></div></td>
          <td><input name="by_w_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="48" rowspan="2" align="center" valign="middle"><div align="right"><strong>Address of nurety: </strong></div></td>
          <td align="left" valign="top"><p>
              <input name="by_w_add" type="text" size="80" maxlength="50" />
          </p></td>
        </tr>
        <tr>
          <td align="left" valign="top"><em>home no,street,near,city,state</em> </td>
        </tr>
        <tr>
          <td width="202" align="right"><div align="right"><strong>Date Since Employed: </strong></div></td>
          <td><label>
            <input type="text" name="datum2" />
            <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum2');"> <img src="calender.png" /></a> </label>
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
            </table></td>
        </tr>
        <tr>
          <td width="202"><div align="right"><strong> In Which Area Of Domestic Help Like:</strong></div></td>
          <td><label>
            <input type="checkbox" name="checkbox" value="Cooking " />
            <strong>Cooking            </strong>
            <input type="checkbox" name="checkbox2" value="Dusting and cleaning" />
            <strong>Dusting &amp;  cleaning</strong>
            <input type="checkbox" name="checkbox3" value="Outdoor works" />
            <strong>Outdoor works</strong>
            <input type="checkbox" name="checkbox4" value="Attending guests" />
            <strong>Attending guests/visitors </strong><br />
            <input type="checkbox" name="checkbox5" value="Attending phone calls etc" />
            <strong>Attending phone calls etc</strong></label></td>
        </tr>
        
        <tr>
          <td height="160" align="center" valign="middle"><div align="right"><strong>Physical Structure:</strong></div></td>
          <td align="left" valign="top"><table width="575" border="0">
              <tr align="right">
                <td width="134"><div align="left" class="style1">Height:</div></td>
                <td width="144" align="left"><label>
                  <input type="text" name="txt_height" />
                </label></td>
                <td width="78"><div align="left" class="style1">Weight:</div></td>
                <td width="201" align="left"><label>
                  <input type="text" name="txt_weight" />
                </label></td>
              </tr>
              <tr>
                <td width="134"><div align="left" class="style1">Hair Color : </div></td>
                <td><label>
                  <input type="text" name="txt_h_color" />
                </label></td>
                <td width="78"><strong>Eye Color: </strong></td>
                <td><label>
                  <input type="text" name="txt_eye_color" />
                </label></td>
              </tr>
              <tr>
                <td height="24" colspan="4"><label></label>                  <div align="left" class="style1">Handed:
                  
                    <select name="handed">
                      <option>select</option>
                      <option>right</option>
                      <option>left</option>
                    </select>
</div>                  
                  <label><strong>Tatoo/scars marks:
                  <input name="txt_mark" type="text" size="60" />
                  </strong></label></td>
                </tr>
              <tr>
                <td colspan="4"><strong>His favourate ditty:</strong>                  <input name="txt_ditty" type="text" size="60" /></td>
                </tr>
              
              <tr>
                <td height="24"><strong>Other:</strong></td>
                <td colspan="3"><input name="txt_other" type="text" size="60" /></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Owner Name : </strong></div></td>
          <td><input name="txt_owner_name" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Owner Address : </strong></div></td>
          <td><input name="txt_owner_add" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Owner Boter_id No.: </strong></div></td>
          <td><input name="txt_boter_id" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td align="right"><div align="right"><strong>Date   </strong></div></td>
          <td><label>
            <input type="text" name="datum3" />
            <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum3');"> <img src="calender.png" /></a> </label>
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
            </table></td>
        </tr>
        <tr>
          <td><div align="right"><strong>  Police Officer Employers ID:</strong></div></td>
          <td><input name="txt_emp_id" type="text" size="50" maxlength="50" /></td>
        </tr>
          <tr>
    <td height="66" align="center" valign="top"><div align="right"></div>
        <div align="right">
          <input type="button" name="Submit" value="clear" onclick="abc();"/>

          <input type="submit" name="save" value="SAVE"/>
        </div>
      </td>
  </tr>
      </table>
    </form>    </td>
  </tr>
  
  
</table>
</body>
</html>
