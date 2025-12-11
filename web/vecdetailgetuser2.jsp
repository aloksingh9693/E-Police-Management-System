<%-- 
    Document   : vecdetailgetuser2
    Created on : Feb 23, 2011, 12:12:00 PM
    Author     : TFP
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
    st=con.prepareStatement("select * from fourwheeler where thanaid=?");
     st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
    data = data + ":" + rs.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }

    out.println(data);
%>