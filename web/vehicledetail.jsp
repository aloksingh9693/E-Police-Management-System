<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {
	color: #003366;
	font-weight: bold;
}
.style5 {color: #000000}
.style7 {font-size: 24px}
-->
</style>
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
                            var url="vecdetailgetuser.jsp"
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
               
                  function showStud2(std_value1)
                    {
                       if(std_value1!="-1")
                        {
                            xmlHttp=GetXmlHttpObject()
                            if (xmlHttp==null)
                            {
                                alert ("Browser does not support HTTP Request")
                                // return
                            }
                            var url="vehicledetailgetuser1.jsp"
                            url=url+"?std_id="+std_value1
                            xmlHttp.onreadystatechange=stateChanged2
                           xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
                          // alert(std_value1)
                        }
                        else
                        {
                            alert("Please Select a Student Code 1 st");
                            return
                        }
                    }

                   function stateChanged2()
                    {
                        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                        {
                            var showdata = xmlHttp.responseText;
                            var strar = showdata.split("_");
                         
                            var stt=strar[0].split(":");
                            var stt1=strar[1].split(":");
                            var stt2=strar[2].split("*");
                            var stt3=strar[3].split("*");
                             document.form1.t1.value=stt2[0];
                             document.form1.t2.value=stt2[1];
                            document.form1.t3.value=stt3[0];
                            document.form1.twheeler.options.length=0;
                             for (var i=0; i < stt.length;++i){
                                  var str=stt[i].split("*");

                                  
                                   addOption(document.form1.twheeler, str[0], str[1]);
                               }
                               document.form1.thwheeler.options.length=0;
                               for (var j=0; j < stt1.length;++j){
                                    var str1=stt1[j].split("*");
                                    addOption(document.form1.thwheeler, str1[0], str1[1]);
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

//-->
</script>
</head>

<body>
<table width="593" height="239" bgcolor="#FFFFFF">
  <tr>
    <th height="233" valign="top" bgcolor="#FFFFFF" scope="row"><form id="form1" name="form1" method="post" action="">
      <div align="center" class="style3">
        <table width="580" height="227" bgcolor="#FFFFFF">
          <tr>
            <th height="52" colspan="4" align="center" valign="middle" scope="row"><span class="style7">Detail Of Thana</span></th>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <th width="100" align="center" valign="middle" scope="row"><div align="left"><span class="style5">District:</span></div></th>
            <td width="144" align="center" valign="middle"><select name="District" onchange="showStud1(this.value)">

	<%!                  Connection cn = null;
                         PreparedStatement pst = null;
                         ResultSet rs = null;
    %>

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
              </select>
            </td>
            <td width="114"><div align="left">PoliceStation:</div></td>
            <td width="144"><div align="center">
                    <select name="THANA" onchange="showStud2(this.value);">
                  <option>Select</option>
                </select>
            </div></td>
            <td width="27">&nbsp;</td>
            <td width="23">&nbsp;</td>
          </tr>
          <tr>
            <th height="36" scope="row"><div align="left">TwoWheeler:</div></th>
            <td align="center" valign="middle"><div align="center">
                <p align="center">
                  <select name="twheeler">
                    <option>select</option>
                  </select>
                </p>
            </div></td>
            <td><div align="left">FourWheeler:</div></td>
            <td><div align="center">
                    <select name="thwheeler">
                  <option>select</option>
                </select>
            </div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <th height="38" scope="row"><div align="left">NumberOfEmp:</div></th>
            <td><div align="center">
              <input name="t1" type="text" readonly="true" />
            </div></td>
            <td>ThanaIncharge:</td>
            <td><input type="text" name="t2" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <th height="40" scope="row">PhoneNumber:</th>
            <td colspan="3">
              <input type="text" name="t3" />
              </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <th height="21" scope="row">&nbsp;</th>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
      </div>
        </form>
    </th>
  </tr>
</table>
</body>
</html>
