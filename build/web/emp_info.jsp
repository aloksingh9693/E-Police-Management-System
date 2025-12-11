<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
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
        var url="getuser.jsp"
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
 function showPost(std_value)
{
    if(std_value!="-1")
	{
        xmlHttp=GetXmlHttpObject()
        if (xmlHttp==null)
        {
            alert ("Browser does not support HTTP Request")
           // return
        }
        var url="getpost_id.jsp"
        url=url+"?std_id="+std_value
        xmlHttp.onreadystatechange=stateChanged1
        xmlHttp.open("GET",url,true)
        xmlHttp.send(null)
	}
	else
	{
		 alert("Please Select a post 1 st");
                 return
	}
}
        function stateChanged()
{

    if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
    {
        var showdata = xmlHttp.responseText;
        var strar = showdata.split(":");



           document.form1.dept_id.value=strar;

          }
}
 function stateChanged1()
{

    if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
    {
        var showdata = xmlHttp.responseText;
        var strar = showdata.split(":");



           document.form1.post_id.value=strar;

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
<style type="text/css">
<!--
.style3 {
	font-size: 24px;
	font-weight: bold;
}
.style1 {font-size: 24px}
-->
</style>
</head>

<body>
    <table width="614" border="0" align="center">
  <tr>
      <th width="608" scope="col"><form id="form1" name="form1" method="post" action="emp_insert.jsp" onsubmit="return verifyDat();">
        
                  <table width="608" height="348" background="file:///E|/e_police/web/images/grid1.gif">
            
            <tr>
              <td width="600" align="center"><table width="600">
                  <tr>
                    <th height="39" colspan="2" align="center" valign="middle" scope="col"><span class="style1"><span class="style1">Employee</span> Informatoion</span> </th>
                  </tr>
                  <tr>
                    <th align="left" valign="middle" scope="col"><div align="right">NAME</div></th>
                    <th align="left" valign="middle" scope="col"><div align="left">
                        <input type="text" name="name" />
                    </div></th>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">FATHER NAME </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="father" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">GENDER</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="Radio" name="sex" value="m" checked />
                      Male <img src="images/Shim.gif" height="1" width="5" />
                      <input type="Radio" name="sex" value="f" />
                      Female</div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">DATE OF BIRTH </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="datum1"/>
                        <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datum1');"> <img src="calender.png"/></a>
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
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">ADDRESS</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="Address" size="40" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">CATEGORY</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="Radio" name="category" value="g" />
                        <font color = "Blue">Gen</font>
                        <input type="Radio" name="category" value="o" checked="True" />
                        <font color = "Blue">OBC</font>
                        <input type="Radio" name="category" value="s" checked="True" />
                        <font color = "Blue">SC\ST</font></div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">BLOOD GROUP </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <select name="menu1">
                          <option value="o-">O-</option>
                          <option value="o+">O+</option>
                          <option value="AB-">AB-</option>
                          <option value="AB+">AB+</option>
                          <option value="A-">A-</option>
                          <option value="A+">A+</option>
                          <option value="B-">B-</option>
                          <option value="B+">B+</option>
                        </select>
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">MARRIED STATUS</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="Radio" name="married" value="Y" checked />
                      Yes <img src="images/Shim.gif" height="1" width="5" />
                      <input type="Radio" name="married" value="N" />
                      No</div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">EDUCATION</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="education" size="40" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">CONTACT NUMBER </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="Text" name="contact" size="15" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">JOINING DATE </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="datjn"/>
                    <a href="#" onclick="setYears(1947, 2008);
       showCalender(this, 'datjn');"> <img src="calender.png"/></a></div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">JOINING PLACE </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <select name="menu_district"  onchange="showDistrict(this.value);">
                          <option value="-1">SELECT</option>
                          <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from district");

      rs=pst.executeQuery();
	  while(rs.next())
	  {

	  %>
                          <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                          <%}
      cn.close();
      pst.close();
      }
	  catch(Exception e){}
	  %>
                        </select>
                    </div></td>
                  </tr>
                  <tr>
                    <td align="center"><div align="right">THANA</div></td>
                    <td><div align="left">
                        <select name="menu_thana" >
                        </select>
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">JOINING POST</div></td>
                    <td align="left" valign="middle"><div align="left">
                        <select name="menu_post" onchange="showPost(this.value)" >
                          <option value="-1">SELECT</option>
                          <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from post");
%>
                          <%
      rs=pst.executeQuery();
	  while(rs.next())
	  {

	  %>
                          <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                          <%}
      cn.close();
      pst.close();
      }
	  catch(Exception e){}
	  %>
                        </select>
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">POST ID </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="post_id" size="10" />
                    </div></td>
                  </tr>
                  <tr>
                    <th width="176" align="left" valign="middle" scope="col"><div align="right">DEPARTMENT</div></th>
                    <%!
		 Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String url=null;
		%>
                    <th width="179" align="left" valign="middle" scope="col"> <div align="left">
                        <select name="menu1" onchange="showStud(this.value)">
                          <option value="-1">SELECT</option>
                          <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from department");
%>
                          <%
      rs=pst.executeQuery();
	  while(rs.next())
	  {

	  %>
                          <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                          <%}
      cn.close();
      pst.close();
      }
	  catch(Exception e){}
	  %>
                        </select>
                    </div></th>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">DEPARTMENT ID </div></td>
                    <td align="left" valign="middle"><div align="left">
                        <input type="text" name="dept_id" size="10" />
                    </div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="middle"><div align="right">
                        <input type="submit" value="submit" name="t1" />
                    </div></td>
                  </tr>
              </table></td>
            </tr>
          </table>
        
    </form>    </th>
  </tr>
</table>
</body>
</html>
