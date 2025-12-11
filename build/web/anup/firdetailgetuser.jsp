<%-- 
    Document   : vehicledetailgetuser1
    Created on : Feb 23, 2011, 9:57:01 AM
    Author     : TFP
--%>

<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    Connection con1;
    PreparedStatement st1;
    ResultSet rs1;

    int rl;
%>
<%
    int dist =Integer.parseInt(request.getParameter("std_id"));
    String data ="select*select";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from THANA where THANA_ID=?");
     st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
    data = data + ":" + rs.getString(1)+"*"+rs.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }
    /*data=data+"_"+"select*select";
    st1=con.prepareStatement("select ENTRY_DATE from FIR_DTLS where THANA_ID =?");
    st1.setInt(1, dist);
    rs1=st1.executeQuery();
    while(rs1.next())
    {
    data = data + ":" + rs1.getString(1)+"*"+rs1.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }*/
    out.println(data);
%>