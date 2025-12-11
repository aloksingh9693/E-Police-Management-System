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
                font-weight: bold;
                font-style: italic;
            }
.style3 {color: #000000}
.style4 {font-weight: bold; font-size: 24px;}
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
        var url="getemp_car.jsp"
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
       // var strar = showdata.split(":");

       document.form1.t1.value=showdata;
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
       
        <table width="643" height="305">
            <tr>
                <th width="648" height="44" colspan="6" bgcolor="#FFFFFF" scope="col"><span class="style1">
                       </span><span class="style4">
                            
                            <span class="style3">DutyCarInformation    </span>
                            
                            </span><span class="style1">
                           
              </span></th>
            </tr>
            <tr>
                <td height="222" colspan="6" bgcolor="#FFFFFF"><div align="center">
                        <form id="form1" name="form1" method="post" action="carinfoservlet" onsubmit="return valed2();">
                          <table width="637" height="251" bgcolor="#FFFFFF" >
                            <tr>
                              <th width="110" height="43" align="center" valign="top" scope="col">Date : </th>
                              <td width="215" valign="middle">
                                  <p>
                                    <input type="text" name="datum1"/>
                                  <a href="#" onclick="setYears(1947, 2050);
                                                    showCalender(this, 'datum1');"> <img src="calender.png"/></a> </p>
                              
                                  <table id="calenderTable">
                                    <tbody id="calenderTableHead">
                                      <tr>
                                        <td colspan="4" align="center"><select name="select" id="selectMonth" onchange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
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
                                          </select>                                        </td>
                                        <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
                                                            document.getElementById('selectMonth').selectedIndex, false));">
                                          </select>                                        </td>
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
                                  </table>                                </td>
                              <th width="114" align="left" valign="top" scope="col">DriverName:</th>
                              <th width="153" align="left" valign="top" scope="col"><input type="text" name="t1" /></th>
                            </tr>
                            <tr>
                              <td height="38" align="center" valign="middle"><div align="center"><strong>DriverId:</strong></div></td>
                              <td align="left" valign="middle">
                                  <select name="menu5" onchange="showStud(this.value);" >
                                    <option value="-1">select</option>
                                    <%!               PreparedStatement pst = null;
                                                Connection con = null;
                                                ResultSet rs = null;

                                            %>
                                    <%

                             try {
           Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("Select emp_id from emp_info");
            rs=pst.executeQuery();

		while(rs.next())
		{
		%>
                                    <option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
                                    <%	}

                  }
        catch(Exception e)
        {
            out.print(e);
        }finally {
           
        }

		  %>
                                  </select>
                              </td>
                              <td align="left" valign="middle"><strong>OfficerName : </strong></td>
                              <td align="left" valign="middle"><input type="text" name="t2" /></td>
                              <td width="7" rowspan="4" align="center" valign="middle">&nbsp;</td>
                              <td width="10">&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="37" align="center" valign="middle"><div align="center"><strong>DistanceCover : </strong></div></td>
                              <td align="left" valign="middle">
                                  <input type="text" name="t3" />
                             </td>
                              <td align="left"><strong>MeterReading :</strong></td>
                              <td align="left"><input type="text" name="t4" /></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="34"><div align="center"><strong>PetrolQuantity : </strong></div></td>
                              <td align="left">
                                  <input type="text" name="t5" />
                              </td>
                              <td align="left"><strong>VehicleNumber :</strong></td>
                              <td align="left"><input type="text" name="t6" /></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="39"><div align="center"><strong>DutyTime : </strong></div></td>
                              <td align="left">
                                  <input name="t7" type="text" value="hh:mm:ss" />
                                  <select name="menu4">
                                    <option>AM</option>
                                    <option>PM</option>
                                  </select>
                             </td>
                              <td align="left"><strong>ThanaId : </strong></td>
                              <td><select name="thana">
                                  <option value="-1">select</option>
                                  <%
                                                    try {
                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                        String url = "jdbc:Oracle:thin:@localhost:1521:XE";
                                                        con = DriverManager.getConnection(url, "scott", "tiger");
                                                        pst = con.prepareStatement("Select * from thana");

                                                        rs = pst.executeQuery();
                                                        while (rs.next()) {
                                        %>
                                  <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                                  <%
                                                        }
                                                    } catch (Exception e) {
                                                        out.print(e);
                                                    } finally {
                                                    }%>
                              </select></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td height="44">&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td><input type="submit" name="Submit" value="Submit" /></td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                          </table>
                        </form>
              </div></td>
            </tr>
    </table>
        </form>
    </body>
</html>
