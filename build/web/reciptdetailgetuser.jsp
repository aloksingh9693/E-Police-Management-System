<%-- 
    Document   : reciptdetailgetuser
    Created on : Feb 23, 2011, 12:13:59 AM
    Author     : himanshu jha
--%>

<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    int rl;
%>
<%
   //int dist =Integer.parseInt(request.getParameter("std_id"));
        String dist =request.getParameter("std_id");
    String data ="select*select";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from vehiclechk where recpno=?");
    st.setString(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
        data =  rs.getString(1)+"*"+rs.getString(2)+"*"+rs.getString(3)+"*"+rs.getString(4)+"*"+rs.getString(5)+"*"+ rs.getString(6)+"*"+rs.getString(7)+"*"+rs.getInt(8)+"*"+rs.getString(10)+"*"+rs.getInt(11);
    }
    out.println(data);
%>

