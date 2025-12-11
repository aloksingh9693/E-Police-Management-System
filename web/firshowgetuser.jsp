<%-- 
    Document   : firshowgetuser
    Created on : Feb 23, 2011, 9:02:19 AM
    Author     : ANOOP
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
    st=con.prepareStatement("select * from THANA where dis_id=?");
    st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
        data = data + ":" + rs.getInt(1)+"*"+rs.getString(2);
    }
    out.println(data);
%>