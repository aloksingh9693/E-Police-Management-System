<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

    <body bgcolor="#ffccff">
    <form action="Next.jsp" method="post">
        <p height="32" align="center"> SELECT EMPLOYEE ID </p>
         <%!
		 Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    String url=null;
		%>
        <p><select name="menu2">
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

        </select></p>

        <input type="submit" value="next"/>

    </form>

</body>
</html>
