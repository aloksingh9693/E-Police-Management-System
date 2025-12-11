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
                            var url="thanainfogetuser.jsp"
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
<table width="695" height="444" border="1">
  <tr>
    <td><form id="form1" name="form1" method="post" action="thanainfoservlet">
      <table width="678" height="429" border="1">
        <tr>
          <td colspan="5">&nbsp;</td>
          </tr>
        <tr>
          <td width="164"><strong>Select District :</strong> </td>
          <td width="207"><select name="district" onchange="showStud1(this.value)">

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


          </select></td>
          <td width="125"><strong>Select Thana : </strong></td>
          <td width="154" colspan="2"><select name="THANA" >
            <option>Select</option>
          </select></td>
          </tr>
        <tr>
          <td><strong>ThanaInchargeName : </strong></td>
          <td><input type="text" name="t1" /></td>
          <td colspan="3">&nbsp;</td>
          </tr>
        <tr>
          <td><strong>TotalEmployee : </strong></td>
          <td><input type="text" name="t2" /></td>
          <td colspan="3"><input type="submit" name="Submit" value="Submit" /></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3">&nbsp;</td>
          </tr>
      </table>
        </form>
    </td>
  </tr>
</table>
</body>
</html>
