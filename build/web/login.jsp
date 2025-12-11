<%--
    Document   : index
    Created on : Feb 7, 2011, 5:12:44 PM
    Author     : TFP
--%>
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0059)http://www.delhipolice.nic.in/home/helpline/safetytips.aspx -->
<HTML><HEAD><TITLE>Delhi Police :: Safety Tips for Citizens/Visitors of Delhi</TITLE>

        <META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK
            id=ctl00_lnkico href="/images/dplogo.ico" rel="SHORTCUT ICON"></LINK><LINK
            id=ctl00__stylesheetlink
            href="file:///C|/Documents and Settings/TFP/Desktop/him/Delhi Police  Safety Tips for Citizens-Visitors of Delhi_files/style.css"
            type=text/css rel=stylesheet></LINK><!-- href is filled out programmatically in Page_Load -->
     
        <STYLE type=text/css>
               #dropmenudiv {
	BORDER-RIGHT: black 1px solid; BORDER-TOP: black 1px solid; Z-INDEX: 100; FONT: 12px/18px Verdana; BORDER-LEFT: black 1px solid; BORDER-BOTTOM: black 0px solid; POSITION: absolute
               }
               #dropmenudiv A {
	PADDING-RIGHT: 0px; DISPLAY: block; PADDING-LEFT: 0px; FONT-WEIGHT: bold; PADDING-BOTTOM: 1px; WIDTH: 100%; COLOR: #0000ff; TEXT-INDENT: 3px; PADDING-TOP: 1px; BORDER-BOTTOM: black 1px solid; TEXT-DECORATION: none
               }
               #dropmenudiv A:hover {
	COLOR: #ffffff; BACKGROUND-COLOR: #0000ff
               }
               .style8 {font-size: x-large}
.style14 {color: #FFFFFF}
        .style15 {color: #000000}
        .style16 {font-size: x-large; color: #000000; }
        </STYLE>

        <SCRIPT language=javascript src="">
 
function validateForm()
{
    if(document.form1.txt_uid.value=="")
    {
      alert("User Name should be left blank");
     // document.form1.txt_uid.focus();
     // return false;
    }
    
}


    </SCRIPT>

    <META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
            <BODY bgColor=#dcdcdc leftMargin=0 topMargin=0 rightMargin=0 bottomMargin=0 class="style14">
        <%        String username=(String)session.getAttribute("username");
    if(username!=null)
        {
        //out.println(username+" loged out, <a href=\"login.jsp\">Back</a>");
          // response.sendRedirect("login.jsp");
            session.removeAttribute("username");}%>
            <CENTER>
            <TABLE style="BORDER-COLLAPSE: collapse" cellSpacing=0 cellPadding=0 width=1024
        bgColor=#ffffff border=2>
            <TBODY>
            <TR>
            <TD height="227" colSpan=2 vAlign=top background="image/frient1.JPG">
            <DIV class=header>
            <TABLE class=tabcontents id=Table1 cellSpacing=0 cellPadding=0 width=775
        border=0>
            <TBODY>
            <TR>            </TR></TBODY></TABLE></DIV></TD></TR>
            <TR>            </TR>
            <TR>
            <TD class=content vAlign=top width=652 height=400>
            <TABLE id=Table3 style="BORDER-COLLAPSE: collapse" height="100%"
        cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
            <TBODY>
            <TR>
            <TD align=left valign="top"><table width="1016" height="500" border="1" bgcolor="#D7E2F4">
            <tr>
                <th align="center" bgcolor="#D7DFF4" scope="col">
                 <form  name="form1" method="post" action="pass.jsp" onsubmit="return validateForm(); ">
              <table width="1005" bordercolor="#666666">
                <tr>
                  <th width="126" height="38" scope="col">&nbsp;</th>
                  <th width="660" align="right" valign="middle" scope="col"><a href="forget_form.jsp">Forget Password</a></th>
                  <th width="203" scope="col"><a href="sine_up.jsp">Sign up</a></th>
                </tr>
              </table>




              <label><br>
                              <span class="style15"><br>
                              <span class="style8">USER ID:</span></span></label>
              <input type="text" name="txt_uid" value=""  onblur="abc()"/>
            <p>                        <span class="style16">PASSWORD:</span>
            <input type="password" name="txt_pass" value="" />
            </p>
    
            <p><label></label>
            &nbsp;</p>
            <p>&nbsp;</p>
            <p>
            <input name="Submit" type="submit" value="Submit">
            </p></form>            </th>
            </tr>
            </table>                </TD>
            </TR></TBODY></TABLE></TD></TR>
            <TR>
            <TD vAlign=top colSpan=2>
            <DIV class=footer>
            <TABLE width="100%">
            <TBODY>
        
            <TR>
            <TD height="34">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=lemonchiffon 
        border=0>
            <TBODY>
            <TR>
            <TD vAlign=top align=left width="50%"><FONT face=verdana size=2>Designed &amp; Developed by<BR>
                <B>Computer Centre, SATI, Indian
        Police.</B></FONT> </TD>
            <TD vAlign=top align=right width="50%"><FONT face=verdana size=2><B>copyright © 2011 Indian
        Police.</B><BR>
            Best viewed in 800x600
        Resolution.</FONT> </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></CENTER>

            <SCRIPT type=text/javascript>
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
</BODY>
</HTML>
