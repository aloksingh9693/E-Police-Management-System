<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;"/>
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
    <script language="javascript">
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
        var url="getuser1.jsp"
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
function showBranch(std_value)
{
    if(std_value!="-1")
	{
        xmlHttp=GetXmlHttpObject()
        if (xmlHttp==null)
        {
            alert ("Browser does not support HTTP Request")
           // return
        }
        var url="getbranch_id.jsp"
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
function stateChanged()
{

    if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
    {
        var showdata = xmlHttp.responseText;
        var strar = showdata.split(":");



           document.form1.t1.value=strar;

          }
}
function stateChanged1()
{

    if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
    {
        var showdata = xmlHttp.responseText;
        var strar = showdata.split(":");



           document.form1.branch_id.value=strar;

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
function verifyData() {
			a=0;	r="";
                        var aa;
			for (i=0; i<=6; i++) {
				if (document.forms[0].elements[i].value == "") {
					a=1;

					r = r + " " + document.forms[0].elements[i].name + ";" ;
				}
				else if ((i > 5)&&(a==0))  {
					 aa=confirm("All Records are filled in - Thank You !");
				}
			}
			for (i=0; i<=6; i++) {
				if (document.forms[0].elements[i].value == "") {
					aa=confirm("Please fill in the following Records :- " + r);
					document.forms[0].elements[i].focus( );
					break;
				}
			}


		}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>

    <style type="text/css">
<!--
.style1 {font-size: 24px}
-->
    </style>
</head>

<body >
    <form name="form1" action="salary_insert.jsp" method="post"  onsubmit="return vald_sdf();">
      <table width="499" height="280" border="0" background="images/grid1.gif">
        <tr> </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center" valign="top"><table width="483" border="0">
              <tr>
                <th height="53" colspan="2" scope="col"><div align="center"><span class="style1">Employee</span> <span class="style1">Salary</span></div>
                    <div align="center"></div></th>
              </tr>
              <tr>
                <td width="159" align="left"> DATE:</td>
                <td width="425" align="left"><input type="text" name="datum1"/>
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
                            </select>
                          </td>
                          <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value,
				document.getElementById('selectMonth').selectedIndex, false));">
                            </select>
                          </td>
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
                <td width="2"></td>
              </tr>
              <tr>
                <td align="left">BRANCH : </td>
                <td align="left"><select name="menu_salary" onchange="showBranch(this.value)">
                    <option value="-1">SELECT</option>
                    <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from bank_branch");
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
                </td>
              </tr>
              <tr>
                <td align="left">BRACH ID : </td>
                <td align="left"><input type="text" name="branch_id" />
                </td>
              </tr>
              <tr>
                <td align="left">AMOUNT:</td>
                <td align="left"><input type="text" name="amount" />
                </td>
              </tr>
              <tr>
                <td height="32" align="left">EMPLOYEE NAME : </td>
                <%!
		 Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String url=null;
		%>
                <td align="left"><select name="menu1" onchange="showStud(this.value)">
                    <option value="-1">SELECT</option>
                    <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from emp_info");
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
                </td>
              </tr>
              <tr>
                <td height="32" align="left">EMP_ID:</td>
                <td align="left"><input type="text" name="t1"/>
                </td>
              </tr>
              <tr>
                <td></td>
                <td align="left"><input name="submit" type="submit" value="save"  />
                </td>
              </tr>
          </table></td>
        </tr>
      </table>
    </form>

</body>
</html>
