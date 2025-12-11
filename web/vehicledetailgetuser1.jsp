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
    st=con.prepareStatement("select * from twowheeler where thanaid=?");
     st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
    data = data + ":" + rs.getString(1)+"*"+rs.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }
    data=data+"_"+"select*select";
    st1=con.prepareStatement("select * from fourwheeler where thanaid=?");
     st1.setInt(1, dist);
    rs1=st1.executeQuery();
    while(rs1.next())
    {
    data = data + ":" + rs1.getString(1)+"*"+rs1.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }
    //kkkkkkkkkkkkkkkkkkkkkkkkkkkk
  
    st2=con.prepareStatement("select * from thanainfo1 where thanaid=?");
     st2.setInt(1, dist);
    rs2=st2.executeQuery();
    if(rs2.next())
    {
    data = data+"_"+rs2.getString(2)+"*"+rs2.getInt(3);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }

    st3=con.prepareStatement("select * from thana where thana_id=?");
     st3.setInt(1, dist);
    rs3=st3.executeQuery();
    if(rs3.next())
    {
    data = data + "_" +rs3.getString(3);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }

    out.println(data);
%>