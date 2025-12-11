<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;"/>
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
    <SCRIPT Language = "Javascript">
<!--
////////////////////////////////////////////////////////////////////////////////////
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
function showThana(std_value)
{
    if(std_value!="-1")
	{
        xmlHttp=GetXmlHttpObject()
        if (xmlHttp==null)
        {
            alert ("Browser does not support HTTP Request")
           // return
        }
        var url="getthana_id.jsp"
        url=url+"?std_id="+std_value
        xmlHttp.onreadystatechange=stateChanged2
        xmlHttp.open("GET",url,true)
        xmlHttp.send(null)
	}
	else
	{
		 alert("Please Select a post 1 st");
                 return
	}
}
/////////////////
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



           document.form1.post_id.value=strar;

          }
}
function stateChanged2()
{

    if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
    {
        var showdata = xmlHttp.responseText;
        var strar = showdata.split(":");



           document.form1.thana_id.value=strar;

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
/////////////////////////////////////////////////////////////////////////////////////////////
              
			
                       // if(aa==true)
                        //  {

                         //    document.location="service_insert.jsp";
                         //   }
                         //   else{

                         //   }
		

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</SCRIPT>

    <style type="text/css">
<!--
.style1 {font-size: 24px}
-->
    </style>
</head>

<body >
    <form  name="form1" action="service_insert.jsp" method="post" onsubmit="return verifyData();">
	  
	    <table width="600" height="312" border="0" background="images/grid1.gif">
	      <tr>
	        <th width="1070" height="49" scope="col"><span class="style1">EMPLOYEE SERVICE DETAIL </span></th>
    </tr>
	      <tr>
	        <td height="257" align="center" valign="top"><table width="600" border="0">
	          
	          <tr>
	            <td width="273" align="center"><div align="right"><strong>INCHARGE DATE </strong></div></td>
          <td width="311"> <div align="left">
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
          </div></td>
        </tr>
	          <tr>
	            <td align="center"> <div align="right"><strong>DISCHARGE DATE as DD/MM/YYYY</strong></div></td>
          <td><div align="left">
            <input type="text" name="datdis"/>
            <a href="#" onClick="setYears(1947, 2008);
       showCalender(this, 'datdis');">
              <img src="calender.png"/></a> </div></td>
        </tr>
	          <tr>
	            <td align="center"><div align="right"><strong>POST</strong></div></td>
          <td><div align="left">
            <select name="menu_service" onchange="showPost(this.value)">
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
	            <td align="center"><div align="right"><strong>POST ID </strong></div></td>
          <td>
            <div align="left">
              <INPUT Type="text" Name="post_id" Size="20" >
            </div></td>
        </tr>
	          
	          <tr>
	            <td align="center"><div align="right"><strong>DISTRICT</strong></div></td>
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
	            <td align="center"><div align="right"><strong>THANA</strong></div></td>
                <td><div align="left">
                  <select name="menu_thana" >
                  </select>
                </div></td>
        </tr>
	          
	          <tr>
	            <td height="32" align="center"><div align="right"><strong>EMPLOYEE NAME </strong></div></td>
          <%!
		 Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String url=null;
		%>
	            
	            <td><div align="left">
	              <select name="menu1" onchange="showStud(this.value)">
	                
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
                </div></td>
        </tr>
	          <tr>
	            <td height="32" align="center"><div align="right"><strong>EMP_ID</strong></div></td>
          <td><div align="left">
            <INPUT TYPE="TEXT " NAME="t1">
          </div></td>
        </tr>
	          <tr>
	            
	            
	            <td> <div align="right">
	              <INPUT  Type="submit" Value="Save" >
                </div></td>
            </tr>
            </table></td>
    </tr>
      </table>
      
    </form>

</body>
</html>
