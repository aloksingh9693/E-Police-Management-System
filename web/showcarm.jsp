<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
                            var url="showcarmgetuser.jsp"
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
                            var url="showcarmgetuser1.jsp"
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




                              document.form1.m3.options.length=0;

                                for (var i=0; i < strar.length;++i){

                                    var str=strar[i].split("*");

                                    addOption(document.form1.m3, str[1], str[0]);


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
    function abc( i)
    {
        document.location="showcarm2.jsp?a="+i;
    }



//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="862" height="387">
  <tr>
    <td height="358"><form id="form1" name="form1" method="post" action="">
      <table width="853" height="309">
        <tr>
          <td height="100" colspan="5"><div align="center" class="style1">VehicleMaintainDetail</div></td>
          </tr>
        <tr>
          <td width="65"><strong>Select : </strong></td>
          <td width="93"> <div align="center"><strong>District : </strong></div></td>
          <td width="282"><div align="center">
           <select name="m1" onchange="showStud1(this.value);" >
                                   <%!                  Connection cn ;
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
          <td width="101"><div align="center"><strong>ThanaName : </strong></div></td>
          <td width="278"><div align="center">
            <select name="m2" onchange="showStud2(this.value);">
              <option>select</option>
            </select>
          </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="center"><strong>Date : </strong></div></td>
          <td><div align="center">
                  <select name="m3" onchange="abc(this.value);" >
              <option>select</option>
            </select>
          </div></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="71" colspan="5"><div align="center"><strong>Please Select District -&gt; ThanaName -&gt; Date.............. </strong></div></td>
          </tr>
      </table>
    </form>
    </td>
  </tr>
</table>
</body>
</html>
