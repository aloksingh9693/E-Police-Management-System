<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Untitled Document</title>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 18px;
                font-weight: bold;
            }
            -->
        </style>
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
                            var url="showdutygetuser.jsp"
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
                              document.form1.thana.options.length=0;

                                for (var i=0; i < strar.length;++i){

                                    var str=strar[i].split("*");

                                    addOption(document.form1.thana, str[1], str[0]);

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
                            var url="showdutygetuser1.jsp"
                            url=url+"?std_id="+std_value1
                            xmlHttp.onreadystatechange=stateChanged2
                            xmlHttp.open("GET",url,true)
                            xmlHttp.send(null)
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

                           



              document.form1.m1.options.length=0;

                                for (var i=0; i < strar.length;++i){

                                    var str=strar[i].split("*");
                                   
                                    addOption(document.form1.m1, str[1], str[0]);

                            
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
    function abc(i)
    {
        document.location="showduty1.jsp?a="+i;
       // document.location="next.jsp?a="+i;

    }



//-->
</script>
    </head>

    <body>
        <table width="782" height="290">
            <tr>
                <td width="772" height="284" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
                        <table width="768" height="238">
                            <tr>
                                <td colspan="8"><div align="center" class="style1">ShowDutyCarInformation</div></td>
                            </tr>
                            <tr>
                                <td width="91">&nbsp;</td>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td><div align="center"><strong class="style1">Select :</strong></div></td>
                                <td colspan="2"><div align="center"><strong>District :</strong></div></td>
                                <td width="176"><div align="center">
                                        <select name="district" onchange="showStud1(this.value);" >
               <%!       Connection cn ;
                         PreparedStatement pst1=null ;
                         ResultSet rs1=null ;
                         %>

                 <option value="-1">select</option>
                                         <%
                                                                    try {
                                                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                                                        String url = "jdbc:oracle:thin:@localhost:1521:XE";
                                                                        cn = DriverManager.getConnection(url, "scott", "tiger");
                                                                        pst1 = cn.prepareStatement("select * from district");
                                                                        rs1 = pst1.executeQuery();
                                                                        while (rs1.next()) {
                                                        %>
                                        <option value="<%=rs1.getInt(1)%>"><%=rs1.getString(2)%></option>
                                     <%
                                                                        }
                                                                    } catch (Exception e) {
                                                                    }
                                                        %>
                                  </select>
                                </div></td>
                                <td width="93"><div align="center"><strong>ThanaName : </strong></div></td>
                                <td width="120"><div align="center">
                                        <select name="thana" onchange="showStud2(this.value)" >
                                    <option>select</option>
                                  </select>
                                </div></td>
                                <td width="40">&nbsp;</td>
                                <td width="86">&nbsp;</td>
                            </tr>
                                   
                            <tr align="left" valign="top">
                              <td height="43"><label id="a1"></label></td>
                              <td width="125" valign="top"><label id="a2">
                                <div align="center"><strong>Date : </strong></div>
                              </label></td>
                              <td width="1">&nbsp;</td>
                              <td valign="top"><label id="a3"></label> <label id="a4"></label> 
                                  <label id="a5"></label>
                                <div align="center">
                               
                                    
                                <select name="m1" onchange="abc(this.value);">
                                  </select>
                              </div></td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td><label id="a6"></label></td>
                              <td><label id="a7"></label></td>
                          </tr>
                            <tr align="left" valign="top">
                                <td height="30">&nbsp;</td>
                                <td colspan="2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                          </tr>
                            <tr align="left" valign="top">
                                <td height="28" colspan="8"><div align="center"><strong>Please Select District -&gt; ThanaName -&gt; Date.......... </strong></div></td>
                          </tr>
                  </table>
                    </form>
              </td>
            </tr>
    </table>
    </body>
</html>
