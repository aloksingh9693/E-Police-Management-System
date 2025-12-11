<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html;">
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css">
   <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
   </style>
</head>

<body >
<table width="825">
  <tr>
    <td width="817" height="41" align="center" valign="top" bgcolor="#FFFFFF"><p class="style1">TENANT VERIFICATION FORM</p>    </td>
  </tr>
  
  <tr>
    <td><form id="form1" name="form1" method="post" action="tenant_info"  >
      <table width="817" border="0">
        <tr>
          <td colspan="2" align="right"><strong>Police Station ID: </strong></td>
          <td width="529"><label>
            <input name="txt_ps_id" type="text" />
          </label></td>
        </tr>
        <tr>
          <td width="167"><div align="left"><strong>OWNER DETAIL  </strong></div></td>
          <td width="107"><div align="right"><strong>Name:</strong></div></td>
          <td><input name="txt_owner_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td colspan="2" valign="middle"><div align="right"><strong>Father Name: </strong></div></td>
          <td><input name="txt_owner_fname" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>Date Of Birth: </strong></div></td>
          <td><label>
            <input type="text" name="datum1" />
            <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum1');"> <img src="calender.png" /></a> </label>
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
          <td colspan="2"><div align="right"><strong>Contact no.:  : </strong></div></td>
          <td><input name="txt_owner_con_no" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td height="30" colspan="2" align="center" valign="middle"><div align="right"><strong>Parmanent Address:</strong></div></td>
          <td align="left" valign="top"><input name="txt_owner_padd" type="text" size="70" maxlength="70" /></td>
        </tr>
        <tr>
          <td><div align="left"><strong>TENANT DETAIL </strong></div></td>
          <td><div align="right"><strong>Name:</strong></div></td>
          <td><input name="txt_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td colspan="2" valign="middle"><div align="right"><strong>Father Name: </strong></div></td>
          <td><input name="txt_fname" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>Date Of Birth: </strong></div></td>
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
          <td colspan="2"><div align="right"><strong>Contact no.:  : </strong></div></td>
          <td><input name="txt_con_no" type="text" size="30" maxlength="30" /></td>
        </tr>
        <tr>
          <td height="24" colspan="2" align="center" valign="middle"><div align="right"><strong> Parmanent Address:</strong></div></td>
          <td align="left" valign="top"><input name="txt_padd" type="text" size="70" maxlength="70" /></td>
        </tr>
        <tr>
          <td colspan="2" valign="middle"><div align="right"><strong> Name of previous landlord: </strong></div></td>
          <td><input name="txt_p_landlord" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="24" colspan="2" align="center" valign="middle"><div align="right"><strong>Address:</strong></div></td>
          <td align="left" valign="top"><input name="txt_p_lod_add" type="text" size="70" maxlength="70" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong> By Whom Introduce Name ::</strong></div></td>
          <td><input name="txt_y_home_name" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="24" colspan="2" align="center" valign="middle"><div align="right"><strong> Address:</strong></div></td>
          <td align="left" valign="top"><input name="txt_y_home_add" type="text" size="70" maxlength="70" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>Particulars/details of Ration card/Driving   Licence/I..Card if any NO. : </strong></div></td>
          <td><input name="txt_any_id" type="text" maxlength="10" /></td>
        </tr>
        <tr>
          <td height="150" colspan="2"><div align="right"><strong>Name and Address of friends/relatives and other   associated locally present:</strong></div></td>
          <td><table width="442" border="0">
              <tr>
                <td width="150"><div align="center"><strong>Name</strong></div></td>
                <td width="135"><div align="center"><strong>Relation</strong></div></td>
                <td width="135"><div align="center"><strong>Address</strong></div></td>
              </tr>
            </table>
              <p>
                <label></label>
                <input name="txt_rel_name1" type="text" size="22" />
                <input name="txt_rel1" type="text" size="20" />
                <input name="txt_rel_add1" type="text" size="35" />
              </p>
            <p>
                <label></label>
                <input name="txt_rel_name2" type="text" size="22" />
                <input name="txt_rel2" type="text" size="20" />
                <input name="txt_rel_add2" type="text" size="35" />
              </p>
            <p>
                <label></label>
                <input name="txt_rel_name3" type="text" size="22" />
                <input name="txt_rel3" type="text" size="20" />
                <input name="txt_rel_add3" type="text" size="35" />
                <label></label>
                <label></label>
            </p>            </td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>  Employment details(</strong><strong>Designation</strong>)<strong>:</strong></div></td>
          <td><input name="txt_designation" type="text" size="50" maxlength="50" /></td>
        </tr>
        <tr>
          <td height="24" colspan="2" align="center" valign="middle"><div align="right"><strong> Office Address:</strong></div></td>
          <td align="left" valign="top"><input name="txt_off_add" type="text" size="70" maxlength="70" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>Monthly income: </strong></div></td>
          <td><input name="txt_income" type="text" maxlength="10" /></td>
        </tr>
        <tr>
          <td height="68" colspan="2"><div align="right"><strong>Vehicle Details</strong><strong>:</strong></div></td>
          <td><table width="442" border="0">
              <tr>
                <td width="150"><div align="center"><strong>vehicle name </strong></div></td>
                <td width="135"><div align="center"><strong>Reg.no.</strong></div></td>
                <td width="135"><div align="center"></div></td>
              </tr>
            </table>
              <p>
                <label></label>
                <input type="text" name="txt_vehi_name" />
                <input type="text" name="txt_reg_no" />
                <label></label>
                <label></label><label></label>
              <label></label></p>            </td>
        </tr>
        <tr>
          <td colspan="2" align="right"><div align="right"><strong>Date Since living as tenant: </strong></div></td>
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
          <td height="150" colspan="2"><div align="right"><strong>Name Of Tenants family members:</strong></div></td>
          <td><table width="529" border="0">
              <tr>
                <td width="31"><div align="center"><strong>Sr.n.</strong></div></td>
                <td width="142"><strong>Name</strong></td>
                <td width="127"><div align="center"><strong>Relation</strong></div></td>
                <td width="48"><div align="center"><strong>Age</strong></div></td>
                <td width="159"><strong>Occupation</strong></td>
              </tr>
            </table>
              <p>
                
                 <strong>(1):</strong>
                <input type="text" name="fm_name1" />
                <input type="text" name="fm_relation1" />
                <input name="fm_age1" type="text" size="5" />
                <input type="text" name="fm_occu1" />
              </p>
            <p>
               
                 <strong>(2):</strong>
                <input type="text" name="fm_name2" />
                <input type="text" name="fm_rel2" />
                <input name="fm_age2" type="text" size="5" />
                <input type="text" name="fm_occu2" />
            </p>
            <p>
                <label></label>
                
                <strong>(3):</strong>
                <input type="text" name="fm_name3" />
                <input type="text" name="fm_rel3" />
                <label></label>
                <label></label>
                <input name="fm_age3" type="text" size="5" />
                <input type="text" name="fm_occu3" />
            </p>
            <p>
              
                <strong>(4):</strong>
                <input type="text" name="fm_name4" />
              <input type="text" name="fm_rel4" />
              <input name="fm_age4" type="text" size="5" />
              <input type="text" name="fm_occu4" />
</p>
            <p>
              
                <strong>(5):</strong>
                <input type="text" name="fm_name5" />
              <input type="text" name="fm_rel5" />
              <input name="fm_age5" type="text" size="5" />
              <input type="text" name="fm_occu5" />
</p>
            <p><strong>(6):</strong>
              <input type="text" name="fm_name6" />
              <input type="text" name="fm_rel6" />
              <input name="fm_age6" type="text" size="5" />
              <input type="text" name="fm_occu6" />
            </p>            </td>
        </tr>
        <tr>
          <td colspan="2"><div align="right"><strong>Any Crime History: </strong></div></td>
          <td><input name="txt_crm_hty" type="text" maxlength="10" /></td>
        </tr>
        <tr>
          <td height="24" colspan="2"><div align="right"><strong>  Police Officer employers ID:</strong></div></td>
          <td><p>
            <input name="txt_emp_id" type="text" size="50" maxlength="50" />
          </p>            </td>
        </tr>
        <tr>
          <td height="26" colspan="2">&nbsp;</td>
          <td><div align="right">
            <label></label>
            <input name="Reset" type="reset" value="CLEAR" onclick=txt_ps_id.value="clear"/>
            <input type="submit" name="Submit22" value="SAVE" />
          </div></td>
        </tr>
      </table>
    </form>    </td>
  </tr>
  
  <tr>
    <td height="23" align="center" valign="top"></form>    </td>
  </tr>
</table>
</body>
</html>
