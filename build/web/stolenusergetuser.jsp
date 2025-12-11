<%-- 
    Document   : stolenusergetuser
    Created on : Feb 22, 2011, 9:49:18 PM
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
    int dist =Integer.parseInt(request.getParameter("std_id"));
    String data ="select*select";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from stolencar where stolenid=?");
    st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
        data =  rs.getString(1)+"*"+rs.getString(2)+"*"+rs.getString(3)+"*"+rs.getString(4)+"*"+rs.getString(5)+"*"+ rs.getString(6)+"*"+rs.getString(7)+"*"+rs.getString(8)+"*"+rs.getString(9)+"*"+rs.getString(10)+"*"+rs.getString(12)+"*"+rs.getInt(13);
    }
    out.println(data);
%>
