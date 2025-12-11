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
.style10 {font-size: x-large}
        </STYLE>

    <SCRIPT language=javascript src="" type=text/javascript>
  
    </SCRIPT>

    <META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
            <BODY bottomMargin=0 bgColor=#dcdcdc leftMargin=0 topMargin=0 rightMargin=0>
            <CENTER>
            <TABLE style="BORDER-COLLAPSE: collapse" cellSpacing=0 cellPadding=0 width=1024
        bgColor=#ffffff border=2>
            <TBODY>
            <TR>
            <TD height="226" colSpan=2 vAlign=top background="image/frient1.JPG">
            <DIV class=header>
            <TABLE class=tabcontents id=Table1 cellSpacing=0 cellPadding=0 width=775
        border=0>
            <TBODY>
            <TR>
          
            </TR></TBODY></TABLE></DIV></TD></TR>
            <TR>
    
            </TR>
            <TR>
            <TD class=content vAlign=top width=1024 height=400>
            <TABLE id=Table3 style="BORDER-COLLAPSE: collapse" height="100%"
        cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
            <TBODY>
            <TR>
              <TD align=center valign="top" bgcolor="#FFCCCC"><form name="form1" method="post" action="login.jsp">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p> <%!
        Connection cn;
        PreparedStatement pn;
		PreparedStatement pn1;
        ResultSet rs;
        String name = null;
        int emp_id=0;
        String pass= null;
        String cpass = null;
        String hint=null;
        String u_id=null;
        ResultSet rs1;
        ResultSet rs2;
        int s;
        String s_name;
        String u_idd=null;
        PreparedStatement pn2=null;
    %>
    <%
                 name= request.getParameter("txt_name");
                 emp_id= Integer.parseInt(request.getParameter("txt_eid"));
                 pass= request.getParameter("txt_pass");
                 cpass= request.getParameter("txt_cpass");
                 hint= request.getParameter("txt_hint");
                u_id=emp_id+name;
                try
                        {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String url = "jdbc:oracle:thin:@localhost:1521:XE";
                cn = DriverManager.getConnection(url, "scott", "tiger");
                pn2=cn.prepareStatement("select * from emp_info where emp_id="+emp_id);
                rs2=pn2.executeQuery();

                if(rs2.next())
                    {
                    s=rs2.getInt(1);
                    s_name=rs2.getString(2);
                    }
               
                    if(s==emp_id&&s_name.equals(name))
                    {
                        %>
                            This user account allready exists! 
            <%
                        }
                else
                    {
                if(pass.equals(cpass))
                    {
                pn = cn.prepareStatement("insert into pass values(seq_log.nextval,?,?,?,?,?)");
                pn.setString(1, name);
                pn.setInt(2, emp_id);
                pn.setString(3, pass);
                pn.setString(4, u_id);
                pn.setString(5, hint);
                pn.executeUpdate();
               pn1=cn.prepareStatement("select * from pass ");
		rs1=pn1.executeQuery();
                while(rs1.next())
                {
                  u_idd=rs1.getString(5);  
                }
               %>
                   <span class="style10">User ID=</span><%=u_idd%></span>
<%
                }
                else
                    {
                    response.sendRedirect("sine_up.jsp");
                    }
                }}
                catch(Exception e){
                out.print(e);
                }
    %>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>
                  <input name="Submit" type="submit" class="textheading" value="  OK  ">
                </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                </form>
              </TD>
            </TR></TBODY></TABLE></TD>
            </TR>
            <TR>
            <TD height="42" colSpan=2 vAlign=top>
            <DIV class=footer>
            <TABLE width="100%">
            <TBODY>
        
            <TR>
            <TD height="34">
            <TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=lemonchiffon 
        border=0>
            <TBODY>
            <TR>
            <TD vAlign=top align=left width="50%"><FONT face=verdana
        color=#ff0000 size=2>Designed &amp; Developed by<BR>
            <B><FONT
        color=#0000ff>Computer Centre, SATI, Indian
        Police.</FONT></B></FONT> </TD>
            <TD vAlign=top align=right width="50%"><FONT face=verdana
        color=#ff0000 size=2><B>copyright © 2011 Indian
        Police.</B><FONT color=#0000ff><BR>
            Best viewed in 800x600
        Resolution.</FONT></FONT>
            </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></CENTER>

            <SCRIPT type=text/javascript>
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>


</BODY></HTML>
