<%-- 
    Document   : showdutygetuser1
    Created on : Feb 24, 2011, 2:20:49 PM
    Author     : TFP
--%>

<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    Connection con1;
    PreparedStatement st1,st2,st3;
    ResultSet rs1,rs2,rs3;

    int rl;
%>
<%
    int dist =Integer.parseInt(request.getParameter("std_id"));

    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    String data ="select*select";
    st=con.prepareStatement("select thanaid,to_char(ddate) from carinfo where thanaid=?");
     st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
    data = data + ":"+rs.getInt(1)+"*" + rs.getString(2);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);

    }
    out.println(data);
    %>