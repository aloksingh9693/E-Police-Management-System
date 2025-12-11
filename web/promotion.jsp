<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

   <meta http-equiv="Content-Type" content="text/html;"/>
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css"/>
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}






 


 function addOption(selectbox,text,value )
            {
               var optn = document.createElement("OPTION");
               optn.text = text;
               optn.value = value;
               selectbox.options.add(optn);
            }
function stateChanged5()
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
//-->
</script>
</head>

<body>
    <form id="form1" name="form1" method="post" action="insert_prmo_demo.jsp" onsubmit=" return vald_sdf();">
 
    <table width="529" border="0">
      <tr>
        <th width="523" scope="col">EMPLOYEE PROMOTION/PUNISHMENT DETAIL </th>
       
      </tr>
      <tr>
       
        <td>
          <table width="524" border="0">
            <tr>
              <th width="156" align="left" scope="col">DATE:</th>
              <th width="358" align="left" scope="col"><input type="text" name="datum1"/>
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
                        </select>                      </td>
                      <td colspan="2" align="center"><select name="select" id="selectYear" onchange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));">
                        </select>                      </td>
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
              
      </tr>
            <tr>
              <td align="left">EMPLOYEE NAME:</td>
			  <%!
		 Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String url=null;
		%>
              <td><select name="menu_name" onchange="">
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
	  <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
	  <%}
      cn.close();
      pst.close();
      }
	  catch(Exception e){}
	  %>

              </select></td>
            </tr>
           <tr>
              <td align="left">STATUS:</td>
             
              <td><select name="menu_status" onchange="">
                <option value="-1">SELECT</option>
				 <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from status");
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

              
              </select></td>
            </tr>
           
            <tr>
              <td align="left">CURRENT POST : </td>
              <td><select name="menu_cpost" onchange="">
                <option value="-1">SELECT</option>
				 <%     try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
    url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("select * from post");
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
              </select></td>
            </tr>
           
            <tr>
              <td align="left">NEW POST : </td>
              <td><select name="menu_npost" onchange="">
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
	  <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
	  <%}
      cn.close();
      pst.close();
      }
	  catch(Exception e){}
	  %>
              </select></td>
            </tr>
           
            <tr>
              <td align="left">DISTRICT:</td>
              <td><select name="menu_district"  onchange="showDistrict(this.value);">
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
              </select></td>
            </tr>
           
            <tr>
              <td align="left">THANA:</td>
              <td><select name="menu_thana" >
                <option value="-1">SELECT</option>

				
              </select></td>
            </tr>
           
			<tr>
			<td height="30"></td>
			<td><input type="submit" value="SAVE"/></td>	</tr>
      </table>      </tr>
    </table>

</form>
</body>
</html>
