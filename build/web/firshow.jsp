<%-- 
    Document   : firshow
    Created on : Feb 23, 2011, 7:31:15 AM
    Author     : ANOOP
--%>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  >
        <title>JSP Page</title>
        <script type="text/JavaScript">
<!--
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
                            var url="firshowgetuser.jsp"
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
                              document.form1.m2.options.length=0;

                                for (var i=0; i < strar.length;++i){

                                    var str=strar[i].split("*");

                                    addOption(document.form1.m2, str[1], str[0]);

                                }
                            }
                        }
                    }

                         function showStud21(std_value1)
                    {
                       if(std_value1!="-1")
                        {
                            xmlHttp=GetXmlHttpObject()
                            if (xmlHttp==null)
                            {
                                alert ("Browser does not support HTTP Request")
                                // return
                            }
                            var url="firshowgetuser1.jsp"
                            url=url+"?std_id="+std_value1
                            xmlHttp.onreadystatechange=stateChanged2
                           xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
                          //alert(std_value1)
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
                            var strar = showdata.split(":");

                         
                       
                            document.form1.m3.options.length=0;
                             for (var i=0; i < strar.length;++i){
                                var str =strar[i].split("*");
                                   addOption(document.form1.m3, str[1], str[0]);
                               }
                              
                            }
                        }

                       


                     function showStud31(std_value2)
                    {
                       if(std_value2!="-1")
                        {
                            xmlHttp=GetXmlHttpObject()
                            if (xmlHttp==null)
                            {
                                alert ("Browser does not support HTTP Request")
                                // return
                            }
                            var url="firshowgetuser2.jsp"
                            url=url+"?std_id="+std_value2
                            xmlHttp.onreadystatechange=stateChanged3
                            xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
                        }
                        else
                        {
                            alert("Please Select a Student Code 1 st");
                            return
                        }
                    }

                    function stateChanged3()
                    {
                        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                        {
                            var showdata = xmlHttp.responseText;
                            var strar = showdata.split(":");

                           
                              document.form1.m4.options.length=0;

                                for (var i=0; i < strar.length;++i){


                                    addOption(document.form1.m4, strar[i], strar[i]);
                         }
                        }
                    }
                      function showStud4(std_value3)
                    {
                       if(std_value3!="-1")
                        {
                            xmlHttp=GetXmlHttpObject()
                            if (xmlHttp==null)
                            {
                                alert ("Browser does not support HTTP Request")
                                // return
                            }
                            var url="firshowgetuser3.jsp"
                            url=url+"?std_id="+std_value3
                            xmlHttp.onreadystatechange=stateChanged4
                            xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
                        }
                        else
                        {
                            alert("Please Select a Student Code 1 st");
                            return
                        }
                    }

                    function stateChanged4()
                    {
                        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                        {
                            var showdata = xmlHttp.responseText;
                            var strar = showdata.split(":");
                          

                            document.form1.t1.value=strar[0];
                            document.form1.t2.value=strar[1];
                            document.form1.t3.value=strar[2];
                             document.form1.t4.value=strar[3];
                            document.form1.t5.value=strar[4];
                            document.form1.t6.value=strar[5];
                             document.form1.t7.value=strar[6];
                            document.form1.t8.value=strar[7];
                            document.form1.t9.value=strar[8];
                             document.form1.t10.value=strar[9];
                            document.form1.t11.value=strar[10];
                            document.form1.t12.value=strar[11];
                             document.form1.t13.value=strar[12];
                            document.form1.t14.value=strar[13];
                            document.form1.t15.value=strar[14];
                             document.form1.t16.value=strar[15];
                            document.form1.t17.value=strar[16];
                            document.form1.t18.value=strar[17];
                             document.form1.t19.value=strar[18];
                            document.form1.t20.value=strar[19];
                            document.form1.t21.value=strar[20];
                             document.form1.t22.value=strar[21];
                            document.form1.t23.value=strar[22];
                            document.form1.t24.value=strar[23];
                             document.form1.t25.value=strar[24];
                            document.form1.t26.value=strar[25];
                            document.form1.t27.value=strar[26];
                             document.form1.t28.value=strar[27];
                            document.form1.t29.value=strar[28];
                            document.form1.t30.value=strar[29];
                             document.form1.t31.value=strar[30];



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
.style1 {
	font-size: 24px;
	color: #333333;
}
.style3 {color: #000000}
.style7 {color: #333333; font-weight: bold; }
-->
        </style>
</head>
    <body>
        <table width="4467" height="265" >
          <tr valign="top">
            <td width="4457" height="259"><form name="form1" method="post" action="">
              <table width="4452" height="257" >
                <tr>
                  <td height="50" colspan="4" bgcolor="#FFFFFF"><div align="center"><span class="style11 style9 style1"><strong> FIR REPORT </strong></span></div></td>
                  <td width="4025" rowspan="3">&nbsp;</td>
                </tr>
                <tr bgcolor="#A8750B">
                  <td width="104" height="30" bgcolor="#FFFFFF"><span class="style7">DISTRICT : </span></td>
                  <td width="123" bgcolor="#FFFFFF"><select name="m1" onchange="showStud1(this.value);" >

                <%!      Connection cn = null;
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
                  </select></td>
                  <td width="156" bgcolor="#FFFFFF"><span class="style7">POLICE STSTION : </span></td>
                  <td width="199" bgcolor="#FFFFFF"><select name="m2" onchange="showStud21(this.value);" >
                    <option>select</option>
                  </select></td>
                </tr>
                <tr>
                  <td height="59" bgcolor="#FFFFFF"> <span class="style7">DATE:</span></td>
                  <td bgcolor="#FFFFFF"><select name="m3" onchange="showStud31(this.value);" >
                    <option>select</option>
                  </select></td>
                  <td bgcolor="#FFFFFF"><span class="style7">SELECT FIRID : </span></td>
                  <td bgcolor="#FFFFFF">
				  
				
				  
				  
				  <select name="m4" onchange="showStud4(this.value);">
                    <option value="-1">select</option>
                  </select></td>
                </tr>
                <tr>
                  <td height="106" colspan="5" align="left" valign="middle" bgcolor="#FFFFFF"><table width="4447" >
                    <tr>
                      <td width="130" height="40"><span class="style3">THANA ID</span></td>
                      <td width="136">ENTRY DATE</td>
                      <td width="118">ACT OF CRIME </td>
                      <td width="122">ROJNAMCHA NO </td>
                      <td width="135">CRIME DATE</td>
                      <td width="134">CRIME DAY</td>
                      <td width="139">RECIEVING DATE</td>
                      <td width="135">CRIME TIME</td>
                      <td width="139">GET INFO TIME</td>
                      <td width="132">TYPE INFO</td>
                      <td width="138">CRIME PLACE</td>
                      <td width="126">BEET NO</td>
                      <td width="132">DIRECTION</td>
                      <td width="130">DISTANCE</td>
                      <td width="146">INFORMER NAME</td>
                      <td width="148">FATHER  NAME</td>
                      <td width="118">DATE OF BIRTH </td>
                      <td width="138">NATIONALITY</td>
                      <td width="134">PASPORT NO</td>
                      <td width="134">ISSUE DATE</td>
                      <td width="136">ISSUE PLACE</td>
                      <td width="137">OCCUPATION</td>
                      <td width="159">INFORMER ADDRESS</td>
                      <td width="144">CRIMINAL NAME</td>
                      <td width="147">CRIMINAL FNAME</td>
                      <td width="155">CRIMINAL ADDRESS</td>
                      <td width="143">CRIMINAL CAST</td>
                      <td width="143">REASION DELAY</td>
                      <td width="138">ASSEST PRICE</td>
                      <td width="141">ASSEST DETAIL</td>
                      <td width="150">FIRST INFO DETAIL</td>
                    </tr>
                    <tr>
                      <td height="24"><input type="text" name="t1" /></td>
                      <td><input type="text" name="t2" /></td>
                      <td><input type="text" name="t3" /></td>
                      <td><input type="text" name="t4" /></td>
                      <td><input type="text" name="t5" /></td>
                      <td><input type="text" name="t6" /></td>
                      <td><input type="text" name="t7" /></td>
                      <td><input type="text" name="t8" /></td>
                      <td><input type="text" name="t9" /></td>
                      <td><input type="text" name="t10" /></td>
                      <td><input type="text" name="t11" /></td>
                      <td><input type="text" name="t12" /></td>
                      <td><input type="text" name="t13" /></td>
                      <td><input type="text" name="t14" /></td>
                      <td><input type="text" name="t15" /></td>
                      <td><input type="text" name="t16" /></td>
                      <td><input type="text" name="t17" /></td>
                      <td><input type="text" name="t18" /></td>
                      <td><input type="text" name="t19" /></td>
                      <td><input type="text" name="t20" /></td>
                      <td><input type="text" name="t21" /></td>
                      <td><input type="text" name="t22" /></td>
                      <td><input type="text" name="t23" /></td>
                      <td><input type="text" name="t24" /></td>
                      <td><input type="text" name="t25" /></td>
                      <td><input type="text" name="t26" /></td>
                      <td><input type="text" name="t27" /></td>
                      <td><input type="text" name="t28" /></td>
                      <td><input type="text" name="t29" /></td>
                      <td><input type="text" name="t30" /></td>
                      <td><input type="text" name="t31" /></td>
                    </tr>
                  </table></td>
                </tr>
              </table>
                        </form>
            </td>
          </tr>
    </table>
        <h1>&nbsp;</h1>
    </body>
</html>
